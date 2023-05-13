#!/bin/sh


kwin_x11 --replace &

chromium --kiosk 127.0.0.1:3000 --no-sandbox