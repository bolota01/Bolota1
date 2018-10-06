import events from './events.js';

var configuration = {};

events.addListener("pause_change", function(data){
    var body = document.getElementsByTagName("body")[0];

    if (data.paused){
        body.style.display = "none";
    } else {
        body.style.display = "block";
    }
})

events.addListener("cfg", function(data){
    configuration = data.cfg;
});

export default configuration;