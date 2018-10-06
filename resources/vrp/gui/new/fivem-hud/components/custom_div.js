import React from 'react';
import events from '../events';


class ComponentCustom extends React.Component {
    constructor(props){
        super(props);
        this.state = {content: props.content};

        this.onSetDivCss = this.onSetDivCss.bind(this);
        this.onSetDivContent = this.onSetDivContent.bind(this);
        this.onSetDivExecJs = this.onSetDivExecJs.bind(this);

        this.style = document.createElement("style");
        this.style_css = document.createTextNode("");
        this.style.appendChild(this.style_css);
        
        this.onSetDivCss(props);

        this.class_name = "div_" + props.name;

        document.head.appendChild(this.style);
    }

    componentWillMount(){
        this.eventSetDivCss = events.addListener("set_div_css", this.onSetDivCss);
        this.eventSetDivContent = events.addListener("set_div_content", this.onSetDivContent);
        this.eventSetDivExecJs = events.addListener("div_execjs", this.onSetDivExecJs);
    }

    componentWillUnmount(){
        this.eventSetDivCss.remove();
        this.eventSetDivContent.remove();
        this.eventSetDivExecJs.remove();

        document.head.removeChild(this.style);
    }

    onSetDivCss(data){
        if (data.name == this.props.name){
            this.style_css.nodeValue = data.css;
        }
    }

    onSetDivContent(data){
        if (data.name == this.props.name){
            this.setState({content: data.content});
        }
    }

    onSetDivExecJs(data){
        (new Function(this, data.js)).apply(null, "");
    }

    createText() {
        return {__html: this.state.content};
    }

    render(){
        return (
            <div
                className={this.class_name}
                dangerouslySetInnerHTML={this.createText()}></div>
        );
    }
}


export default class FabricComponent extends React.Component {
    constructor(props){
        super(props);
        this.state = this.getInitialState();
        this.onSetDiv = this.onSetDiv.bind(this);
        this.onRemoveDiv = this.onRemoveDiv.bind(this);
    }

    getInitialState(){
        return {components: {}};
    }

    componentWillMount(){
        this.eventSetDiv = events.addListener("set_div", this.onSetDiv);
        this.eventRemoveDiv = events.addListener("remove_div", this.onRemoveDiv);
    }

    onSetDiv(data){
        var components = this.state.components;
        components[data.name] = data;
        this.setState({components: components});
    }

    onRemoveDiv(data){
        var components = this.state.components;
        if(components[data.name]){
            delete components[data.name];
            this.setState({components: components});
        }
    }

    renderDiv(){
        var elements = [];

        for (var key in this.state.components){
            elements.push(<ComponentCustom {...this.state.components[key]}/>);
        }

        return elements;
    }

    render(){
        return (
            <div className="custom-components">{this.renderDiv()}</div>
        );
    }
}