from flask import Flask, Response, render_template, Markup, request, jsonify
import speech_recognition as sr
import sh
import os
import subprocess

from modules 


app = Flask(__name__)

"""
--------------
Frontend Route
--------------
"""

@app.route('/', methods=['POST', 'GET'])
def home_screen():
    apps_button = 'Apps'
    settings_button = 'Settings'
    subjects_button = 'Subjects'

    return render_template('index.html', apps_button=apps_button,
                                         settings_button=settings_button,
                                         subjects_button=subjects_button,)
    

@app.route('/apps_screen', methods=['POST', 'GET'])
def apps_screen():
    return render_template('apps-main.html')


@app.route('/settings_screen', methods=['POST', 'GET'])
def settings_screen():
    themes_button = 'Themes'
    software_update_button = 'Software Update'
    about_system_button = 'About System'

    return render_template('settings-main.html', themes_button=themes_button,
                                                 software_update_button=software_update_button,
                                                 about_system_button=about_system_button)


@app.route('/settings_screen_software_update_screen', methods=['POST', 'GET'])
def settings_screen_software_update_screen():
    return render_template('settings-software-update.html')




@app.route('/subjects_screen', methods=['POST', 'GET'])
def subjects_screen():
        return render_template('subjects-main.html')










"""
--------------
Backend Route
--------------
"""

## This is where the backend scripts go through





## Home Screen


## This is where the volume rockers which are located in the top right corners go to. 


# <div class="status-bar-right-column">
#         <div class="status-item"><form action="/home_screen_volume_rocker_up" method="post"><button type="submit" class="status-bar-button">Volume Up</button></form></div>
#         <div class="status-item"><form action="/home_screen_volume_rocker_down" method="post"><button type="submit" class="status-bar-button">Volume Down</button></form></div>
#         <div class="status-item"><form action="/home_screen_volume_rocker_mute_unmute" method="post"><button type="submit" class="status-bar-button">Volume Mute</button></form></div>
# </div>



@app.route('/home_screen_volume_rocker_up', methods=['POST'])
def home_screen_volume_rocker_up():
        os.system('pactl set-sink-volume @DEFAULT_SINK@ +10%')d
        return home_screen()



@app.route('/home_screen_volume_rocker_down', methods=['POST'])
def home_screen_volume_rocker_down():
        os.system('pactl set-sink-volume @DEFAULT_SINK@ -10%')
        return home_screen()


@app.route('/home_screen_volume_rocker_mute_unmute', methods=['POST'])
def home_screen_volume_rocker_mute():
        if b'[off]' in SOUND_OUTPUT:
                os.system('amixer sset Master unmute')
        return home_screen()














## Apps Screen


## This is where the volume rockers which are located in the top right corners go to.


# <div class="status-bar-right-column">
#         <div class="status-item"><form action="/apps_screen_volume_rocker_up" method="post"><button type="submit" class="status-bar-button">Volume Up</button></form></div>
#         <div class="status-item"><form action="/apps_screen_volume_rocker_down" method="post"><button type="submit" class="status-bar-button">Volume Down</button></form></div>
#         <div class="status-item"><form action="/apps_screen_volume_rocker_mute_unmute" method="post"><button type="submit" class="status-bar-button">Volume Mute</button></form></div>
# </div>

@app.route('/apps_screen_volume_rocker_up', methods=['POST'])
def apps_screen_volume_rocker_up():
        os.system('pactl set-sink-volume @DEFAULT_SINK@ +10%')
        return apps_screen()



@app.route('/apps_screen_volume_rocker_down', methods=['POST'])
def apps_screen_volume_rocker_down():
        os.system('pactl set-sink-volume @DEFAULT_SINK@ -10%')
        return apps_screen()


@app.route('/apps_screen_volume_rocker_mute_unmute', methods=['POST'])
def apps_screen_volume_rocker_mute():
        if b'[off]' in SOUND_OUTPUT:
                os.system('amixer sset Master unmute')
        return apps_screen()






## Settings Screen 

## This is where the volume rockers which are located in the top right corners go to.


# <div class="status-bar-right-column">
#         <div class="status-item"><form action="/settings_screen_volume_rocker_up" method="post"><button type="submit" class="status-bar-button">Volume Up</button></form></div>
#         <div class="status-item"><form action="/settings_screen_volume_rocker_down" method="post"><button type="submit" class="status-bar-button">Volume Down</button></form></div>
#         <div class="status-item"><form action="/settings_screen_volume_rocker_mute_unmute" method="post"><button type="submit" class="status-bar-button">Volume Mute</button></form></div>
# </div>




@app.route('/settings_screen_volume_rocker_up', methods=['POST'])
def settings_screen_volume_rocker_up():
    os.system('pactl set-sink-volume @DEFAULT_SINK@ +10%')
    return settings_screen()


    



@app.route('/settings_screen_volume_rocker_down', methods=['POST'])
def settings_screen_volume_rocker_down():
    os.system('pactl set-sink-volume @DEFAULT_SINK@ -10%')
    return settings_screen()





@app.route('/settings_screen_volume_rocker_mute_unmute', methods=['POST'])
def settings_screen_volume_rocker_mute():
    SOUND_OUTPUT = subprocess.check_output(['amixer', 'get', 'Master'])
    if b'[off]' in SOUND_OUTPUT:
        os.system('amixer sset Master unmute')
    else:
        os.system('amixer sset Master mute')
    return settings_screen()


        
if __name__ == '__main__':

    app.run(debug=True, port=3000)
