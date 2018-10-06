import React from 'react';
import ReactDOM from 'react-dom';

import axios from 'axios';

import events from './events';
import configurations from './messages';

import Menu from './components/menu';
import Prompt from './components/prompt';
import FabricProgressBar from './components/progressbar';
import FabricRequestMessage from './components/requests';


class Application extends React.Component {
    render(){
        return (
            <div className="container">
                <Menu />
                <Prompt />
                <div style={{
                    position: "absolute",
                    top: "20px",
                    right: "20px"}}>
                    <FabricRequestMessage />
                </div>
                <div style={{
                        position: "absolute",
                        bottom: "10px",
                        left: "260px",
                        opacity: 0.8}}>
                    <FabricProgressBar anchor="minimap" />
                </div>
            </div>
        );
    }
}


window.addEventListener("load",function(){
    window.addEventListener("message", function(evt){
        events.emit(evt.data.act, evt.data);
    });

    axios.post("http://vrp/cfg", "");

    ReactDOM.render(<Application />, document.getElementById("app"));
});
