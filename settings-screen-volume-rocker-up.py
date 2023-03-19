@app.route('/settings_screen_volume_rocker_up', methods=['POST'])
def settings_screen_volume_rocker_up():
    os.system('pactl set-sink-volume @DEFAULT_SINK@ +10%')
    return settings_screen()