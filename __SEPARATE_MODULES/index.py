from flask import Flask, Response, render_template, Markup, request, jsonify
import speech_recognition as sr
import sh
import os
import subprocess
import one_module
