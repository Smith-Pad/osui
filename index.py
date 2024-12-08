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


if __name__ == '__main__':
    app.run(debug=True, port=3000)
