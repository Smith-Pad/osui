@app.route('/apps_screen_volume_rocker_down', methods=['POST'])
def apps_screen_volume_rocker_down():
    os.system('pactl set-sink-volume @DEFAULT_SINK@ -10%')
    return apps_screen()