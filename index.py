from flask import Flask, render_template
import speech_recognition as sr

app = Flask(__name__)

""" 


"""
@app.route('/', methods=['POST', 'GET'])
def home_screen():
        return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True, port=3000)
