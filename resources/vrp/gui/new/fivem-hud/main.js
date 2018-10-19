import React from 'react';
import ReactDOM from 'react-dom';

import axios from 'axios';

import events from './events';
import configurations from './messages';

import Menu from './components/menu';
import Prompt from './components/prompt';
import FabricComponent from './components/custom_div';
import FabricAnnounce from "./components/announce";
import FabricProgressBar from './components/progressbar';
import FabricRequestMessage from './components/requests';


class Application extends React.Component {
    render(){
        return (
            <div className="container">
                <FabricComponent />
                <Menu />
                <Prompt />
                <div style={{position: "absolute", top: "2%", left: "1.5%"}}>
                    <img src="img/logo.png" />
                </div>
                <div className="center">
                    <FabricProgressBar anchor="center" layout="horizontal" />
                </div>
                <div className="botright">
                    <FabricAnnounce />
                    <FabricProgressBar anchor="botright" layout="horizontal" />
                </div>
                <div className="topright">
                    <FabricRequestMessage />
                </div>
                <div className="player-status">
                    <FabricProgressBar anchor="minimap" layout="vertical" />
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
