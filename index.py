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
    return render_template('settings.html')



if __name__ == '__main__':
    app.run(debug=True, port=3000)
