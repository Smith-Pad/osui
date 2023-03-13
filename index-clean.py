"""
Welcome to the clean version of the guide. 

"""




from flask import Flask, render_template, Markup
import speech_recognition as sr
import sh 


app = Flask(__name__)


## Here, we define an app route for the home-screen. 
## By default, 
@app.route('/', methods=['POST', 'GET'])

def home_screen():
