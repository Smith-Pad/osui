@app.route('/settings_screen_volume_rocker_down', methods=['POST'])
def settings_screen_volume_rocker_down():
    os.system('pactl set-sink-volume @DEFAULT_SINK@ -10%')
    return settings_screen()