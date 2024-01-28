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


@app.route('/sample_lesson__page1')
def sample_lesson__page1():
    return render_template('sample-lesson/01.html')



@app.route('/sample_lesson_original_ux_port')
def sample_lesson_original_ux_port():
    return render_template('sample-lesson-original-ux-port/index.html')


@app.route('/sample_lesson_original_ux_port__main_menu')
def sample_lesson_original_ux_port__main_menu():
    return render_template('sample-lesson-original-ux-port/game_menu.html')


@app.route('/sample_lesson_original_ux_port__introduction')
def sample_lesson_original_ux_port__introduction():
    return render_template('sample-lesson-original-ux-port/introduction.html')


@app.route('/sample_lesson_original_ux_port__page1')
def sample_lesson_original_ux_port__page1():
    return render_template('sample-lesson-original-ux-port/01.html')


@app.route('/sample_lesson_original_ux_port__page2')
def sample_lesson_original_ux_port__page2():
    return render_template('sample-lesson-original-ux-port/02.html')



if __name__ == '__main__':
    app.run(debug=True)
