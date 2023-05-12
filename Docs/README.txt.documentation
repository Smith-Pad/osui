                                _______

                                  OSUI
                                _______


Table of Contents
_________________

1. Official Dependencies

2. Developing OSUI
.. 1. Recommended Platforms to develop OSUI
.. 2. Better way to test out Smith-Pad's OSUI Desktop Environment
..... 1. Installing Distrobox
..... 2. Creating an Arch Linux Container


3. Installation


4. Usage:


5. What's in the backend?
.. 1. Adjusting Sound Volume
..... 1. Decreasing Sound Volume
..... 2. Increasing Sound Volume

.. 2. Adjusting Sound Volume
..... 1. Decreasing Display Brightness
..... 2. Increasing Display Brightness


6. Sources:





1 Official Dependencies
=======================

  - python-pip
    - flask
    - opencv-python
    - sh
    - mediapipe
    - SpeechRecognition
    - python-xlib


2 Developing OSUI
=================

  Here are the instructions to prepare on development on OSUI.


2.1 Recommended Platforms to develop OSUI
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  - Ubuntu LTS/Latest +

    Ubuntu LTS/Latest is generally a recommended distribution that can
    be used for developing OSUI, however limited features are presented
    at the moment. Such as the software updating with pacman in the
    backend controlled by frontend.

    Here are the dependencies to install

    ,----
    | sudo apt install python3
    | sudo apt install python3-pip
    `----

  - Arch based Distributions +

    Arch based Distributions is the most recommended way to develop
    OSUI, since all the features of OSUI are only compatible to Arch
    Linux based distributions.

    Here are the dependencies and requirements to install.

    ,----
    | sudo pacman -S python
    `----

    **NOTE: Most arch based distributions should come with the latest
      version of python**

    ,----
    | sudo pacman -S python-pip
    `----


2.2 Better way to test out Smith-Pad's OSUI Desktop Environment
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  The better way to test out Smith-Pad's OSUI Desktop Environment and
  testing out the "full" functionalities of the desktop environment is
  to use containers, preferably using a program called distrobox, which
  is available in most distributions. However, running in a container
  does not allow hardware control from frontend. However, this section
  will be updated, once we discover something though.


2.2.1 Installing Distrobox
--------------------------

* 2.2.1.1 On Ubuntu/Debian based distros

  ,----
  | sudo apt install podman
  `----

  ,----
  | git clone https://github.com/89luca89/distrobox
  | cd distrobox
  | sh ./install
  `----


* 2.2.1.2 On Arch Based Distros

  ,----
  | sudo pacman -S podman
  `----

  ,----
  | git clone https://github.com/89luca89/distrobox
  | cd distrobox
  | sh ./install
  `----


* 2.2.1.3 On Fedora based Distros

  ,----
  | sudo dnf install podman
  `----

  ,----
  | git clone https://github.com/89luca89/distrobox
  | cd distrobox
  | sh ./install
  `----


2.2.2 Creating an Arch Linux Container
--------------------------------------

  Here is how you create an Arch Linux Container.


  ,----
  | distrobox create -i docker.io/archlinux:latest --init --name <name of container>
  `----

  Then you enter in to the container you just created. :w

  ,----
  | distrobox enter <name of container>
  `----


  Then use the pacman command to make sure packages have been updated.

  ,----
  | sudo pacman -Syyu
  `----

  After that, use the pacman command to install the Python Pip Package
  Manager

  ,----
  | sudo pacman -S python-pip
  `----

  After that, use the pacman command to install git.

  ,----
  | sudo pacman -S git
  `----

  After that, run this script to install python dependencies that are
  needed for running OSUI.

  ,----
  | sh dependencies-install.sh
  `----

  And then finally run python

  ,----
  | python index.py
  `----


  ,----
  | http://localhost:3000 or http://127.0.0.1:3000
  `----


3 Installation
==============

  For the python dependencies, here are the list of dependencies that
  are needed for the installation of the OSUI Desktop Environment

  - `pip install flask'

  - `pip install opencv-python'

  - `pip install sh'

  - `pip install mediapipe'

  - `pip install SpeechRecognition'

  - `pip install python-xlib'


  However, if you want it to make it faster, it is recommended to run
  the `dependencies-install.sh' script

  ,----
  | sh dependencies-install.sh
  `----


4 Usage:
========

  ,----
  | from flask import Flask, Response, render_template, Markup, request, jsonify
  | import speech_recognition as sr
  | import sh
  | import os
  | import subprocess
  `----


5 What's in the backend?
========================

5.1 Adjusting Sound Volume
~~~~~~~~~~~~~~~~~~~~~~~~~~

  For adjusting the volume in the status bar, it uses PulseAudio `pactl'


5.1.1 Decreasing Sound Volume
-----------------------------

  ,----
  | pactl set-sink-volume @DEFAULT_SINK@ -10%
  `----


5.1.2 Increasing Sound Volume
-----------------------------

  ,----
  | pactl set-sink-volume @DEFAULT_SINK@ +10%
  `----


5.2 Adjusting Sound Volume
~~~~~~~~~~~~~~~~~~~~~~~~~~

  For adjusting the volume, in the backend, it uses BrightnessCTL
  `brightnessctl'


5.2.1 Decreasing Display Brightness
-----------------------------------

  ,----
  | brightnessctl set 10%-
  `----


5.2.2 Increasing Display Brightness
-----------------------------------

  ,----
  | brightnessctl set +10%
  `----


6 Sources:
==========

  <https://github.com/89luca89/distrobox>
