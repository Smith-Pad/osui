"""
 ██████      ███████     ██    ██     ██                                                           
██    ██     ██          ██    ██     ██                                                           
██    ██     ███████     ██    ██     ██                                                           
██    ██          ██     ██    ██     ██                                                           
 ██████      ███████      ██████      ██                                                           
                                             

 Operating System User Interface. 

"""






from flask import Flask, Response, render_template, Markup, request, jsonify
import speech_recognition as sr
import sh
import os
import subprocess



app = Flask(__name__)

"""
--------------
Frontend Routes

This is where the frontend routes are used for displaying content
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












class HOME_BACKEND(): 

        @app.route('/home_screen_volume_rocker_up', methods=['POST'])
        def home_screen_volume_rocker_up():
                os.system('pactl set-sink-volume @DEFAULT_SINK@ +10%')
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

HOME_BACKEND()













class APPS_BACKEND():
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
APPS_BACKEND()







class SETTINGS_BACKEND():
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

SETTINGS_BACKEND()


        
if __name__ == '__main__':

    app.run(debug=True, port=3000)
