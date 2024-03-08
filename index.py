"""
 ██████      ███████     ██    ██     ██                                                           
██    ██     ██          ██    ██     ██                                                           
██    ██     ███████     ██    ██     ██                                                           
██    ██          ██     ██    ██     ██                                                           
 ██████      ███████      ██████      ██                                                           
                                             

 Operating System User Interface. 

"""


from flask import Flask, redirect,url_for,render_template
import os
import json
import subprocess   


app  = Flask(__name__)


class initOG():
        os.system('cd Subjects/ && nohup php -S localhost:4000 & ')                     ## Subjects Feature
        os.system('cd Software-Update/ && nohup php -S localhost:2000 &')               ## Software Update Feature
initOG()

## Home-Screen
@app.route("/")
def index():
    return render_template('index.html')


## Apps Section

## Clock Mode
@app.route("/APPS_clockmode")
def APPS_clockmode():
    return render_template('APPS/Clock-Mode/index.html')

## Settings-Screen
@app.route("/settings_screen")
def settings_screen():
    wifi_name_device = subprocess.check_output("sh scripting/testing-script.sh", shell=True, text=True)
    bluetooth_name_device = subprocess.check_output("sh scripting/testing-script.sh", shell=True, text=True)
    return render_template('settings.html', wifi_name_device=wifi_name_device, bluetooth_name_device=bluetooth_name_device)



if __name__ == '__main__':
    app.run(debug=True, port=3000)
