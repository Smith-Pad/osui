"""
 ██████      ███████     ██    ██     ██                                                           
██    ██     ██          ██    ██     ██                                                           
██    ██     ███████     ██    ██     ██                                                           
██    ██          ██     ██    ██     ██                                                           
 ██████      ███████      ██████      ██                                                           
                                             

 Operating System User Interface. 

"""


from flask import Flask, redirect,url_for,render_template, jsonify
import os
import json
import subprocess   


app  = Flask(__name__)


# class initOG():
#         os.system('cd Subjects/ && nohup php -S localhost:4000 & ')                     
#         os.system('cd Software-Update/ && nohup php -S localhost:2000 &')              


@app.route("/")
def index():
    return render_template('index.html')





@app.route("/APPS_clockmode")
def APPS_clockmode():
    return render_template('APPS/Clock-Mode/index.html')





@app.route("/settings_screen")
def settings_screen():

    ## This allows the ability to show the wifi name
    wifi_name_device = subprocess.check_output("sh scripting/testing-script.sh", shell=True, text=True)

    ## This allows the ability to show the bluetooth device name that is connected to
    bluetooth_name_device = subprocess.check_output("sh scripting/bluetooth-name.sh", shell=True, text=True)


    ## This allows the ability to show the battery info. TODO: Not available on Linux yet...
    battery_name_device = subprocess.check_output("sh scripting/battery-info.sh", shell=True, text=True)
    return render_template('settings.html', wifi_name_device=wifi_name_device, bluetooth_name_device=bluetooth_name_device, battery_name_device=battery_name_device)


'''
@docs
-------

In these statements, these statements allows the ability to dynamically
control the audio volume of the device using UX. 

'''

@app.route('/volume_rocker_up', methods=['POST'])
def volume_rocker_up():
    print("Volume up action triggered")
    os.system('pactl set-sink-volume @DEFAULT_SINK@ +10%')
    return jsonify({"message": "Volume up action triggered"})

@app.route('/volume_rocker_down', methods=['POST'])
def volume_rocker_down():
    print("Volume down action triggered")
    os.system('pactl set-sink-volume @DEFAULT_SINK@ -10%')
    return jsonify({"message": "Volume down action triggered"})

@app.route('/volume_rocker_mute_unmute', methods=['POST'])
def volume_rocker_mute_unmute():
    print("Mute/Unmute action triggered")
    return jsonify({"message": "Mute/Unmute action triggered"})


if __name__ == '__main__':
    app.run(debug=True, port=3000)
