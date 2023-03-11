from flask import Flask, render_template, Markup
import speech_recognition as sr
import sh
import os


app = Flask(__name__)






@app.route('/', methods=['POST', 'GET'])
def home_screen():
    apps_button = 'Apps'
    settings_button = 'Settings'
    subjects_button = 'Subjects'

    return render_template('index.html',apps_button=apps_button, 

                          settings_button=settings_button, 

                          subjects_button=subjects_button,)








@app.route('/settings_screen', methods=['POST', 'GET'])
def settings_screen():
    themes_button = 'Themes'
    software_update_button = 'Software Update'
    about_system_button = 'About System'

    return render_template('settings-main.html', 
                           themes_button=themes_button, 

                           software_update_button=software_update_button, 
                           
                           about_system_button=about_system_button)








@app.route('/settings_screen_software_update_screen', methods=['POST', 'GET'])
def settings_screen_software_update_screen():
        return render_template('settings-software-update.html') 

if __name__ == '__main__':

    app.run(debug=True, port=3000)
