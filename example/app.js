var Hero = require('ti.hero');

var win = Ti.UI.createWindow({
	backgroundColor: 'white'
});
var label = Ti.UI.createLabel({
	text: 'click me'
});
win.add(label);
win.open();