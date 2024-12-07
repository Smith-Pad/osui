# Hardware Control

## Introduction

In this documentation, we are going to talk about as how to how Hardware Control
works with flask. This is can also be used for other use cases as reference. 


## How does it work? 

How does it work? Well, the two files are required for this is listed here. 


1. `src/hardware-control.js`

2. `index.py`


These are the two files that are used for this. 


Here is what it looks like in the file in the snippet perspective:

In HTML:

```html
<button onclick="volume_up()" class="osui-button-small">Volume Up </button>
<button onclick="volume_down()" class="osui-button-small">Volume Down </button>
<script src="static/hardware-control.js"></script>

```


In Javascript: 
``` js
function volume_up() {
        var requestVolume  = new XMLHttpRequest();
        requestVolume.open('POST', '/volume_rocker_up');
        requestVolume.send();

}


function volume_down() {
        var requestVolume  = new XMLHttpRequest(); 
        requestVolume.open('POST', '/volume_rocker_down')
        requestVolume.send();
}

volume_up();
volume_down();


```


In Python Flask:

```shell
@app.route('/volume_rocker_up', methods=['POST'])
def volume_rocker_up():
	os.system('pactl set-sink-volume @DEFAULT_SINK@ +10%')

@app.route('/volume_rocker_down', methods=['POST'])
def volume_rocker_down():
	os.system('pactl set-sink-volume @DEFAULT_SINK@ -10%')

```