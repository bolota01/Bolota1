import React from 'react';

import events from '../events';


class Announce extends React.Component {
    constructor(props){
        super(props);
        this.onTick = this.onTick.bind(this);
        this.interval = setTimeout(this.onTick, 30000);
    }

    onTick(){
        events.emit("announce-remove");
    }

    getStyle(){
        return {backgroundImage: "url(" + this.props.background +")"};
    }

    render(){
        return (
            <div className="announce" style={this.getStyle()}>
                <div className="message">{this.props.content}</div>
            </div>
        )
    }
}

export default class FabricAnnounce extends React.Component {
    constructor(props){
        super(props);
        this.state = this.getInitialState();
        this.announces = [];
        this.onCreate = this.onCreate.bind(this);
        this.onRemove = this.onRemove.bind(this);
    }

    getInitialState(){
        return {announce: null};
    }

    componentWillMount(){
        this.eventCreate = events.addListener("announce", this.onCreate);
        this.eventRemove = events.addListener("announce-remove", this.onRemove);
    }

    componentWillUnmount(){
        this.eventCreate.remove();
        this.eventRemove.remove();
    }

    onCreate(data){
        this.announces.push(data);

        if (!this.state.announce){
            this.setState({announce: this.announces[0]});
        }
    }

    onRemove(){
        if (this.state.announce){
            this.announces.splice(0, 1);

            if(this.announces.length > 0){
                this.setState({announce: null}, () => setTimeout(() => this.setState({announce: this.announces[0]}), 800));
            }else{
                this.setState({announce: null});
            }
        }
    }

    renderAnnounce(){
        if (this.state.announce){
            return (
                <Announce {...this.state.announce} />
            )
        }

        return null;
    }

    render(){
        return (
            <div className="announce-fabric">
                {this.renderAnnounce()}
            </div>
        )
    }
}
