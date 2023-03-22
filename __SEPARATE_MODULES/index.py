from flask import Flask, Response, render_template, Markup, request, jsonify
import speech_recognition as sr
import sh
import os
import subprocess


## This is where we can access some of the other routes. Which allows 
## the ability to debug in a faster efficient fashion. 

from one_module import get_output

app = Flask(__name__)

@app.route('/', methods=['POST', 'GET'])
def content():
    output = get_output()
    return render_template('index.html', output=output)

if __name__ == '__main__':
    app.run(debug=True, port=3000)
