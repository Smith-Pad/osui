from flask import Flask, redirect,url_for,render_template
import os
import json


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


@app.route('/sample_lesson_original_ux_port__page3')
def sample_lesson_original_ux_port__page3():
    return render_template('sample-lesson-original-ux-port/03.html')









@app.route('/lesson__coverletter')
def lesson__coverletter():
    return render_template('cover-letter/index.html')

@app.route('/lesson__coverletter__main_menu')
def lesson__coverletter__main_menu():
    game_menu_header_title = 'Cover Letter'
    return render_template('cover-letter/game_menu.html', game_menu_header_title=game_menu_header_title)


@app.route('/lesson__coverletter__introduction')
def lesson__coverletter__introduction():
    introduction_header_title = 'Welcome to this lesson'
    introduction_description  = 'Description Here'
    introduction_confirmation = 'Ready to do this'

    return render_template('cover-letter/introduction.html', introduction_header_title=introduction_header_title, introduction_description=introduction_description, introduction_confirmation=introduction_confirmation)


@app.route('/lesson__coverletter__page1')
def lesson__coverletter__page1():
    page_1_blur_effect_content = "Hey there! Imagine a cover letter as your special skills letter. You know how everyone has something they're really good at? Well, a cover letter is like your letter to tell people about those special things you can do. Are you ready to do this?"
    page_1_blur_effect_confirmation_yes = "Yes"                                                             
    page_1_blur_effect_confirmation_no  = "No"                                                              
    return render_template('cover-letter/01.html', page_1_blur_effect_content=page_1_blur_effect_content,  page_1_blur_effect_confirmation_yes=page_1_blur_effect_confirmation_yes, page_1_blur_effect_confirmation_no=page_1_blur_effect_confirmation_no)   


@app.route('/lesson__coverletter__page2')
def lesson__coverletter__page2():
    return render_template('cover-letter/02.html')


@app.route('/lesson__coverletter__page3')
def lesson__coverletter__page3():
    return render_template('cover-letter/03.html')




if __name__ == '__main__':
    app.run(debug=True)
