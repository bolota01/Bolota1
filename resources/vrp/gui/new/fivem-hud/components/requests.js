import React from 'react';
import axios from 'axios';
import events from '../events';


class Request extends React.Component {
    constructor(props){
        super(props);
        this.state = {time: parseInt(props.time)};

        this.onKeyboard = this.onKeyboard.bind(this);
        this.onTick = this.onTick.bind(this);
        this.interval = setTimeout(this.onTick, 1000);
    }

    componentWillMount(){
        this.eventKeyboard = events.addListener("event", this.onKeyboard);
    }

    componentWillUmount(){
        this.eventKeyboard.remove();
    }

    onKeyboard(data){
        if (data.event == "F5"){
            this.sendResponse(true);
        }else if(data.event == "F6"){
            this.sendResponse(false);
        }
    }

    onStop(){
        clearTimeout(this.interval);
    }

    onTick(){
        var time = this.state.time;
        time -= 1;

        if(this.state.time <= 0){
            events.emit("request-remove");
        }else{
            this.setState({time: time});
            this.interval = setTimeout(this.onTick, 1000);
        }
    }

    sendResponse(state){
        this.onStop();
        axios.post("http://vrp/request", JSON.stringify({act: "response", id: this.props.id,  ok: state}));
        events.emit("request-remove");
    }

    render(){
        return (
            <div className="request-message">
                <div className="message">{this.props.text}</div>
                <div className="options">
                    <span className="yes">Sim [F5]</span>
                    <span className="no">Não [F6]</span>
                    <span className="time">[{this.state.time}s]</span>
                </div>
            </div>
        )
    }
}


export default class FabricRequestMessage extends React.Component {
    constructor(props){
        super(props);
        this.state = this.getInitialState();
        this.requests = [];
        this.onRequestCreate = this.onRequestCreate.bind(this);
        this.onRequestRemove = this.onRequestRemove.bind(this);
    }

    getInitialState(){
        return {request: null};
    }

    componentWillMount(){
        this.eventCreate = events.addListener("request", this.onRequestCreate);
        this.eventRemove = events.addListener("request-remove", this.onRequestRemove);
    }

    componentWillUnmount(){
        this.eventCreate.remove();
        this.eventRemove.remove();
    }

    onRequestCreate(data){
        this.requests.push(data);

        if (!this.state.request){
            this.setState({request: this.requests[0]});
        }
    }

    onRequestRemove(){
        if (this.state.request){
            this.requests.splice(0, 1);

            if(this.requests.length > 0){
                this.setState({request: null}, () => setTimeout(() => this.setState({request: this.requests[0]}), 500));
            }else{
                this.setState({request: null});
            }
        }
    }

    renderRequests(){
        if (this.state.request){
            return (
                <Request {...this.state.request} />
            )
        }

        return null;
    }

    render(){
        return (
            <div className="request-fabric">
                {this.renderRequests()}
            </div>
        )
    }
}
