import React from 'react';
import axios from 'axios';

import events from '../events.js';


class Choice extends React.Component {
    isCurrent(){
        if (this.props.current){
            return " current";
        }else{
            return "";
        }
    }

    createText() {
        return {__html: this.props.data[0]};
    }

    render() {
        return (
            <li
                className={"choice" + this.isCurrent()}
                dangerouslySetInnerHTML={this.createText()}></li>
        );
    }
}


export default class Menu extends React.Component {
    constructor(props){
        super(props);
        this.state = this.getInitialState();
        this.onMenuOpen = this.onMenuOpen.bind(this);
        this.onMenuHide = this.onMenuHide.bind(this);
        this.onKeyboard = this.onKeyboard.bind(this);
    }

    getInitialState(){
        return {opened: false, choices: [], id: null, position: 0};
    }

    componentWillMount(){
        this.eventOpen = events.addListener("open_menu", this.onMenuOpen);
        this.eventHide = events.addListener("close_menu", this.onMenuHide);
        this.eventKeyboard = events.addListener("event", this.onKeyboard);
    }

    componentWillUnmount(){
        this.eventOpen.remove();
        this.eventHide.remove();
        this.eventKeyboard.remove();
    }

    onMenuOpen(data){
        this.setState(this.getInitialState(), () => {
            var menudata = data.menudata;
            this.setState({opened: true, choices: menudata.choices, id: menudata.id});
        });
    }

    onMenuHide(data){
        this.setState({opened: false});
    }

    onChangeChoices(data){
        this.setState({choices: data});
    }

    close(){
        if (this.state.opened){
            this.setState(this.getInitialState());
        }

        axios.post("http://vrp/menu", JSON.stringify({act: "close", id: this.state.id }));
    }

    select(){
        var current = this.state.choices[this.state.position];
        axios.post("http://vrp/menu", JSON.stringify({act: "valid", id: this.state.id, choice: current[0], mod: 0}));
    }

    onKeyboard(data){
        if(this.state.opened){
            switch (data.event){
                case "UP":
                    this.move(-1);
                    break;
                case "DOWN":
                    this.move(1);
                    break;
                case "CANCEL":
                    this.close();
                    break;
                case "SELECT":
                    this.select();
                    break;
                case "LEFT":
                    this.valid(-1);
                    break;
                case "RIGHT":
                    this.valid(1);
                    break;
            }
        }
    }

    valid(mod){
        var choices = this.state.choices;
        if (this.state.position < choices.length){
            if (this.state.opened){
                axios.post("http://vrp/menu",JSON.stringify({
                    act: "valid",
                    id: this.state.id,
                    choice: choices[this.state.position][0],
                    mod: mod}));
            }
        }
    }

    move(direction){
        var choices = this.state.choices;
        var position = this.state.position;

        position += direction;

        if (position < 0){
            position = choices.length - 1;
        }else if(position >= choices.length){
            position = 0;
        }

        var scrollto = document.getElementsByClassName("choice")[this.state.position];
        var container = document.getElementsByClassName("choices")[0];
    
        if(scrollto.offsetTop < container.offsetTop || scrollto.offsetTop + scrollto.offsetHeight >= container.offsetTop+container.offsetHeight)
            container.scrollTop = (container.offsetHeight + 2) * Math.floor(scrollto.offsetTop / container.offsetHeight);
        else
            container.scrollTop = 0;    

        this.setState({position: position});
    }

    renderChoices(){
        var position = this.state.position;
        return this.state.choices.map(function(item, i){
            return <Choice data={item} current={position == i} key={i} />
        })
    }

    render(){
        if (!this.state.opened) {return null}

        return (
            <div className="menu">
                <div class="menu-content">
                    <div className="title">{this.props.title}</div>
                    <div className="choices">
                        {this.renderChoices()}
                    </div>
                </div>
            </div>
        );
    }
}
