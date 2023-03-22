from flask import Flask, Response, render_template, Markup, request, jsonify
import speech_recognition as sr
import sh
import os
import subprocess

def get_output():
    output = "hello world"
    return output
