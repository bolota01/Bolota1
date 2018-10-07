import React from 'react';
import axios from 'axios';

import events from '../events';


export default class Prompt extends React.Component {

    constructor(props){
        super(props);
        this.state = this.getInitialState();
        this.onOpenPrompt = this.onOpenPrompt.bind(this);
        this.onChangeValue = this.onChangeValue.bind(this);
        this.onKeyboard = this.onKeyboard.bind(this);
    }

    getInitialState(){
        return {opened: false, title: "", message: "", value: ""};
    }

    componentWillMount(){
        this.eventOpenPrompt = events.addListener("prompt", this.onOpenPrompt);
        this.eventKeyboard = events.addListener("event", this.onKeyboard);
    }

    onKeyboard(data){
        if (this.state.opened){           
            if (data.event == "CANCEL"){
                this.close();
            }
        }
    }

    onOpenPrompt(data){
        this.setState({title: data.title, value: data.text, opened: true});
    }

    onChangeValue(e){
        this.setState({value: e.target.value});
    }

    close(){
        this.setState({ opened: false });
        axios.post("http://vrp/prompt", JSON.stringify({act: "close", result: this.state.value}));
    }

    render(){
        if (!this.state.opened) return null; 

        return (
            <div className="prompt">
                <div className="prompt-back"></div>
                <div className="content">
                    <div className="title">{this.state.title}</div>
                    <div className="input">
                        <input type="text"
                            onChange={this.onChangeValue}
                            onBlur={this.close.bind(this)}
                            value={this.state.value}
                            ref={input => input && input.focus()}/>
                        
                        <div className="help">Pressione [TAB] para finalizar!</div>
                    </div>
                </div>
            </div>
        )
    }
}
