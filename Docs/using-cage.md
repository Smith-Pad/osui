# Using Cage

## Introduction

Cage is a wayland compositor that is works to run graphical applications
and environments  


## How does it work? 

How does it work? Well, the two files are required for this is listed here. 


1. `config/xinitrc`
2. `config/usr/share/xsessions/osui.desktop`


How does it work, well essentially the command to use cage is like this: 

``` shell
cage -D chromium --kiosk 127.0.0.1:3000 --no-sandbox
```

To install cage, it is listed here. 

1. `sudo dnf install cage`
2. `sudo apt install cage`
3. `sudo pacman install cage`



# Sources: 
https://github.com/cage-kiosk/cage