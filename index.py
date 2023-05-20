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
import asyncio


app = Flask(__name__)


@app.route('/', methods=['POST', 'GET'])
def home_screen():
        apps_button = 'Apps'
        settings_button = 'Settings'
        subjects_button = 'Subjects'

        return render_template('index.html', apps_button=apps_button,
                                                settings_button=settings_button,
                                                subjects_button=subjects_button,)



"""
BACKEND STUFF

"""




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