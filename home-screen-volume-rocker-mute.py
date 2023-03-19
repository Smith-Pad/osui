@app.route('/home_screen_volume_rocker_mute', methods=['POST'])
def home_screen_volume_rocker_mute():
    SOUND_OUTPUT = subprocess.check_output(['amixer', 'get', 'Master'])
    if b'[off]' in SOUND_OUTPUT:
        os.system('amixer sset Master unmute')
    else:
        os.system('amixer sset Master mute')
    return home_screen()