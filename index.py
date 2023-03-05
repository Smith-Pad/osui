from flask import Flask, render_template
import speech_recognition as sr

app = Flask(__name__)

""" 
██   ██  ██████  ███    ███ ███████     ███████  ██████ ██████  ███████ ███████ ███    ██ 
██   ██ ██    ██ ████  ████ ██          ██      ██      ██   ██ ██      ██      ████   ██ 
███████ ██    ██ ██ ████ ██ █████       ███████ ██      ██████  █████   █████   ██ ██  ██ 
██   ██ ██    ██ ██  ██  ██ ██               ██ ██      ██   ██ ██      ██      ██  ██ ██ 
██   ██  ██████  ██      ██ ███████     ███████  ██████ ██   ██ ███████ ███████ ██   ████ 
                                                                                          

Search: Home-Screen                                                                                       

"""


@app.route('/', methods=['POST', 'GET'])
def home_screen():
    
    ## Here we name the buttons that are on the homescreen
    home_screen_button_one   = 'Apps'
    home_screen_button_two   = 'Settings'
    home_screen_button_three = 'Subjects'
    
    return render_template('index.html',
                           home_screen_button_one=home_screen_button_one,
                           home_screen_button_two=home_screen_button_two,
                           home_screen_button_three=home_screen_button_three,)


if __name__ == '__main__':
    app.run(debug=True, port=3000)
