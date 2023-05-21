"""
 ██████      ███████     ██    ██     ██                                                           
██    ██     ██          ██    ██     ██                                                           
██    ██     ███████     ██    ██     ██                                                           
██    ██          ██     ██    ██     ██                                                           
 ██████      ███████      ██████      ██                                                           
                                             

 Operating System User Interface. 

"""







from flask import Flask, Response, render_template, Markup, request, jsonify

app = Flask(__name__)

@app.route('/')
def home_screen():
        return render_template('index.html')

if __name__ == '__main__': 
        socketPath = 'socket.sock'
        app.run(debug=True, port=3000)
