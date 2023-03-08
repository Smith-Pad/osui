from flask import Flask, render_template
import speech_recognition as sr
import sh



app = Flask(__name__)

"""
██   ██  ██████  ███    ███ ███████     ███████  ██████ ██████  ███████ ███████ ███    ██ 
██   ██ ██    ██ ████  ████ ██          ██      ██      ██   ██ ██      ██      ████   ██ 
███████ ██    ██ ██ ████ ██ █████       ███████ ██      ██████  █████   █████   ██ ██  ██ 
██   ██ ██    ██ ██  ██  ██ ██               ██ ██      ██   ██ ██      ██      ██  ██ ██ 
██   ██  ██████  ██      ██ ███████     ███████  ██████ ██   ██ ███████ ███████ ██   ████ 
                                                                                          

Search: Home-Screen
------------------------
"""


@app.route('/', methods=['POST', 'GET'])
def home_screen():

    # Here we name the buttons that are on the homescreen
    apps_button = 'Apps'
    settings_button = 'Settings'
    subjects_button = 'Subjects'

    return render_template('index.html',
                           apps_button=apps_button,
                           settings_button=settings_button,
                           subjects_button=subjects_button,)


"""
███████     ███████     ████████     ████████     ██     ███    ██      ██████      ███████
██          ██             ██           ██        ██     ████   ██     ██           ██
███████     █████          ██           ██        ██     ██ ██  ██     ██   ███     ███████
     ██     ██             ██           ██        ██     ██  ██ ██     ██    ██          ██
███████     ███████        ██           ██        ██     ██   ████      ██████      ███████


Search: Settings Screen
------------------------

- Theme Settings

- Software Update

"""


# Search: Settings Screen Main Menu

@app.route('/settings_screen', methods=['POST', 'GET'])
def settings_screen():

    # Here we name the buttons that are on the homescreen
    themes_button = 'Themes'
    software_update_button = 'Software Update'
    about_system_button = 'About System'

    return render_template('settings-main.html',
                           themes_button=themes_button,
                           software_update_button=software_update_button,
                           about_system_button=about_system_button)


# Themes Settings Screen
# This allows the ability to change themes from the interface itself.
@app.route('/settings_screen_themes_screen', methods=['POST', 'GET'])
def settings_screen_themes_screen():
    return render_template('settings-theme-settings.html')


# Software Update Screen 
# This allows the ability to manage the OS from the interface itself.
@app.route('/settings_screen_software_update_screen', methods=['POST', 'GET'])
def settings_screen_software_update_screen():
        return render_template('settings-software-update.html')

#####################################
## Software Update Backend.
#####################################
@app.route("/software_update_service")
def software_update_service():
        software_update_service_output = sh.pkexec.pacman("-Sy")
        return render_template('settings-software-update.html', software_update_service_output=software_update_service_output)










if __name__ == '__main__':
    app.run(debug=True, port=3000)
