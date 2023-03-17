from flask import Flask, Response, render_template, Markup, request, jsonify
import speech_recognition as sr
import sh
import os
import subprocess


app = Flask(__name__)


@app.route('/', methods=['POST', 'GET'])
def home_screen():
    apps_button = 'Apps'
    settings_button = 'Settings'
    subjects_button = 'Subjects'

    return render_template('index.html', apps_button=apps_button,settings_button=settings_button,subjects_button=subjects_button,)
    

@app.route('/apps_screen', methods=['POST', 'GET'])
def apps_screen():
    return render_template('apps-main.html')


@app.route('/settings_screen', methods=['POST', 'GET'])
def settings_screen():
    themes_button = 'Themes'
    software_update_button = 'Software Update'
    about_system_button = 'About System'

    return render_template('settings-main.html', themes_button=themes_button,software_update_button=software_update_button,about_system_button=about_system_button)


@app.route('/settings_screen_software_update_screen', methods=['POST', 'GET'])
def settings_screen_software_update_screen():
    return render_template('settings-software-update.html')


"""
-----------------------------------------------------------------
                Home Screen Backend Scripts
-----------------------------------------------------------------
"""


"""
-------------------------------------------------------------
User presses the volume down, volume up or volume down via 
the status-bar in the OSUI interface. 

-------------------------------------------------------------
"""


## When the user presses the volume up button in the frontend, in the backend, 
## it uses the pactl command to dynamically increase the audio volume. After 
## the pactl command completes the running process, then it will dynamically 
## route back to the home-screen. 

@app.route('/home_screen_volume_rocker_up', methods=['POST'])
def home_screen_volume_rocker_up():
    os.system('pactl set-sink-volume @DEFAULT_SINK@ +10%')
    return home_screen()


## When the user presses the volume down button in the frontend, in
## the backend, it uses the pactl command to dynamically decrease the
## audio volume. 

@app.route('/home_screen_volume_rocker_down', methods=['POST'])
def home_screen_volume_rocker_down():
    os.system('pactl set-sink-volume @DEFAULT_SINK@ -10%')
    return home_screen()



## When the user presses the volume mute button in the frontend, in
## the backend, it uses the amixer command to dynamically decrease the
## audio volume. 


@app.route('/home_screen_volume_rocker_mute', methods=['POST'])
def home_screen_volume_rocker_mute():
    SOUND_OUTPUT = subprocess.check_output(['amixer', 'get', 'Master'])
    if b'[off]' in SOUND_OUTPUT:
        os.system('amixer sset Master unmute')
    else:
        os.system('amixer sset Master mute')
    return home_screen()



if __name__ == '__main__':

    app.run(debug=True, port=3000)
