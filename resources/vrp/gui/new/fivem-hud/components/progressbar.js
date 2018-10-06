import React from 'react';
import events from '../events.js'

const ICONS = {
    "vRP:hunger": "img/queijo.png",
    "vRP:thirst": "img/copo.png"
};


class ProgressBar extends React.Component {
    constructor(props){
        super(props);
        this.state = {value: props.value, text:props.text};
        this.onSetPBarText = this.onSetPBarText.bind(this);
        this.onSetPBarValue = this.onSetPBarValue.bind(this);
    }

    onSetPBarValue(pbar){
        if(this.props.name == pbar.name){
            this.setState({value: pbar.value});
        }
    }

    onSetPBarText(pbar){
        if(this.props.name == pbar.name){
            this.setState({text: pbar.text});
        }
    }

    componentWillMount(){
        this.eventSetBarValue = events.addListener("set_pbar_val", this.onSetPBarValue);
        this.eventSetBarText = events.addListener("set_pbar_text", this.onSetPBarText);
    }

    componentWillUnmount(){
        this.eventSetBarValue.remove();
        this.eventSetBarText.remove();
    }

    getPercent(){
        return ((100 - parseFloat(this.state.value)) /100) * 150 + "px";
    }

    renderStyle(){
        var style = this.props;
        return {
            marginTop: this.getPercent(),
            backgroundColor: "rgb("+style.r+","+style.g+","+style.b+")"
        };
    }

    renderIcon(){
        var icon = ICONS[this.props.name];

        if (icon){
            return (
                <img src={icon} className="icon-bar" />
            )
        }

        return null;
    }

    render(){
        return (
            <div className="progressbar">
                <div className="inner" style={this.renderStyle()}>
                    {this.renderIcon()}
                </div>
            </div>
        )
    }
}


export default class FabricProgressBar extends React.Component {
    constructor(props){
        super(props);
        this.state = {bars: []};
        this.onSetPBar = this.onSetPBar.bind(this);
        this.onRemovePBar = this.onRemovePBar.bind(this);
    }

    componentWillMount(){
        this.eventSetBar = events.addListener("set_pbar", this.onSetPBar);
        this.eventRemoveBar = events.addListener("remove_pbar", this.onRemovePBar);
    }

    onSetPBar(data){
        var pbar = data.pbar;
        if (pbar.anchor == this.props.anchor){
            var bars = this.state.bars;
            if(bars[pbar.name] == undefined){
                bars[pbar.name] = pbar;
                this.setState({bars: bars});
            }
        }
    }

    onRemovePBar(pbar){
        var bars = this.state.bars;
        if(bars[pbar.name] != undefined){
            delete bars[pbar.name];
            this.setState({bars:bars});
        }
    }

    renderBars(){
        var bars = this.state.bars;
        var render_bars = [];
        var index = 0;

        for(var key in bars){
            render_bars.push(<ProgressBar {...bars[key]} key={index}/>);
            index++;
        }

        return render_bars;
    }

    render(){
        return (
            <div className="bars">
                {this.renderBars()}
            </div>
        )
    }
}