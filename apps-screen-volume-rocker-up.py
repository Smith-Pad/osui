@app.route('/apps_screen_volume_rocker_up', methods=['POST'])
def apps_screen_volume_rocker_up():
    os.system('pactl set-sink-volume @DEFAULT_SINK@ +10%')
    return apps_screen()