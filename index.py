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


## So, since Smith-Pad in general was originally based on php, why 
## since we are not entirely ditching php, so why not use it with 
## integration with flask?....

class initOG():
        os.system('cd Subjects/ && nohup php -S localhost:4000 & ')                     ## Subjects Feature
        os.system('cd Software-Update/ && nohup php -S localhost:2000 &')               ## Software Update Feature
initOG()


@app.route('/', methods=['POST', 'GET'])
def home_screen():
        apps_button = 'Apps'
        settings_button = 'Settings'
        subjects_button = 'Subjects'

        return render_template('index.html', apps_button=apps_button,
                                             settings_button=settings_button,
                                             subjects_button=subjects_button,)


@app.route('/settings', methods=['POST', 'GET'])
def settings():

        return render_template('settings.html')




def VOLUME_ROCKERS():
        @app.route('/volume_rocker_up', methods=['POST'])
        def volume_rocker_up():
                os.system('pactl set-sink-volume @DEFAULT_SINK@ +10%')

        @app.route('/volume_rocker_down', methods=['POST'])
        def volume_rocker_down():
                os.system('pactl set-sink-volume @DEFAULT_SINK@ -10%')

        @app.route('/volume_rocker_mute_unmute', methods=['POST'])
        def volume_rocker_mute_unmute():
                if b'[off]' in SOUND_OUTPUT:
                        os.system('amixer sset Master unmute')

VOLUME_ROCKERS()


    
        
if __name__ == '__main__':

    app.run(debug=True, port=3000)
