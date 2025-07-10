"""
 ██████      ███████     ██    ██     ██                                                           
██    ██     ██          ██    ██     ██                                                           
██    ██     ███████     ██    ██     ██                                                           
██    ██          ██     ██    ██     ██                                                           
 ██████      ███████      ██████      ██                                                           
                                             

 Operating System User Interface. 

"""


from flask import Flask, redirect, url_for, render_template, jsonify
import os
import json
import subprocess   


app = Flask(__name__)


# class initOG():
#         os.system('cd Subjects/ && nohup php -S localhost:4000 & ')                     
#         os.system('cd Software-Update/ && nohup php -S localhost:2000 &')              



@app.route("/")
def index():
        return render_template('index.html')



@app.route("/schedule_display")
def schedule_display():
        return render_template('APPS/Schedule-Display/index.html')



@app.route("/math_operations")
def math_operations():
        return render_template('APPS/Math-Operations/index.html')



@app.route("/clock_mode")
def clock_mode():
        return render_template('APPS/Clock-Mode/index.html')


@app.route("/settings")
def settings():
        return render_template('APPS/Settings/index.html')


@app.route("/settings_system")
def settings_system():
        return render_template('APPS/Settings/system.html')



@app.route("/settings_about")
def settings_about():
        return render_template('APPS/Settings/about.html')


if __name__ == '__main__':
        app.run(debug=True, port=3002)
