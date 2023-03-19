@app.route('/settings_screen_volume_rocker_mute', methods=['POST'])
def settings_screen_volume_rocker_mute():
    SOUND_OUTPUT = subprocess.check_output(['amixer', 'get', 'Master'])
    if b'[off]' in SOUND_OUTPUT:
        os.system('amixer sset Master unmute')
    else:
        os.system('amixer sset Master mute')
    return settings_screen()