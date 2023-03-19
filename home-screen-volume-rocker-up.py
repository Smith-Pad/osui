@app.route('/home_screen_volume_rocker_down', methods=['POST'])
def home_screen_volume_rocker_down():
    os.system('pactl set-sink-volume @DEFAULT_SINK@ -10%')
    return home_screen()