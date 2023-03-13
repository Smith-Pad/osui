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
    return render_template('index.html',apps_button=apps_button, settings_button=settings_button, subjects_button=subjects_button,)








@app.route('/settings_screen', methods=['POST', 'GET'])
def settings_screen():
    themes_button = 'Themes'
    software_update_button = 'Software Update'
    about_system_button = 'About System'

    return render_template('settings-main.html', themes_button=themes_button, software_update_button=software_update_button, about_system_button=about_system_button)








@app.route('/settings_screen_software_update_screen', methods=['POST', 'GET'])
def settings_screen_software_update_screen():
        return render_template('settings-software-update.html') 




####################################################################
#                   Software Update Service
#
####################################################################


## This is where the pacman package manager comes to play. This is where in 
## the backend, the pacman package manager will update the system.

## If the update is successfull, then it will notify the user, oh, 
## the update has been successfull, and it will tell them to restart
## their system, if necessary.  





@app.route("/software_update_service")
def software_update_service():
    # Here, we create a variable called `software_update_service_output`
    # which allows the ability to parse out the pacman command to update
    # the system.

    software_update_service_output = sh.pkexec.pacman("-Sy") 

    # For the rendering part, in HTML, the call to output is `{{ update_output }}`.
    # Even though the output will not be visible, it is used for HTML to
    # understand that the system needs the updates. However, it will use the
    # `notify-send` to indicate the user that the software is updated. 

    return render_template('settings-software-update.html')

if __name__ == '__main__':

    app.run(debug=True, port=3000)
