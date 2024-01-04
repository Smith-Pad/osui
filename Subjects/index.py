from flask import Flask, redirect,url_for,render_template
import os


app  = Flask(__name__)




@app.route("/")
def index():
    return render_template('index.html')


@app.route('/main_menu')
def main_menu():
    return render_template('main_menu.html')


@app.route('/sample_lesson')
def sample_lesson():
    return render_template('sample-lesson/index.html')


@app.route('/sample_lesson__main_menu')
def sample_lesson__main_menu():
    return render_template('sample-lesson/game_menu.html')


@app.route('/sample_lesson__introduction')
def sample_lesson__introduction():
    return render_template('sample-lesson/introduction.html')




if __name__ == '__main__':
    app.run(debug=True)
