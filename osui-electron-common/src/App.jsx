//  ██████      ███████     ██    ██     ██                                                           
// ██    ██     ██          ██    ██     ██                                                           
// ██    ██     ███████     ██    ██     ██                                                           
// ██    ██          ██     ██    ██     ██                                                           
//  ██████      ███████      ██████      ██                                                           
//                                              

//  Operating System User Interface. 


// This layer is the home screen layer.

// Inside this layer, this is the homescreen containing home screen components


// On middle of the home screen layer, there is a day greeter, such as Good Morning, 
// Good Afternoon, and Good Evening.

// The other elements on the middle of the home screen layer, there are two buttons,
// which is the Subjects Layer button and the Apps Button

import React from 'react';
import SystemNavigationBar from '@src/system-navigation-bar.jsx';
import SystemStatusBar from './system-status-bar.jsx';
import SubjectsZeroLayer from "./system-subjects-zero-Layer.jsx";
import AppsZeroLayer from "./system-apps-zero-layer.jsx";
import '@src/App.css';
import './system-status-bar.css';
import '@src/system-navigation-bar.css';
import '@src/animations.css';
import { Button } from '@fluentui/react-components';



// Here, we create a constant variable called HOME_SCREEN_GREETING_STYLE_CONTAINER
// in this constant variable container, this allows the greeting text to be stored
// and displayed


// With the power of if statements, if the time is from 12:00 am to 6:00 am, it should 
// be called "good early morning", if the time is from 6:00 am to 11:00 am, it should
// be called "Good Morning", if the time is from 12:00 pm to 5:00 pm, it should 
// be called "Good Afternoon". And from 5:00 pm to 11:00 pm, it should 
// be called "Good Evening"

const HOME_SCREEN_GREETING_STYLE_CONTAINER  = {
        position: "fixed",
        top: "30%",
        left: "50%",
        transform: "translate(-50%, -50%)",
        color: "white",
        fontFamily: "'Lexend', sans-serif",
        fontSize: "1.5rem",
        fontWeight: 500,
        padding: "8px",
        textShadow: "1px 1px 2px rgba(0,0,0,0.5)",
        zIndex: 10
};


// Here, we create a constant variable called HOME_SCREEN_BUTTON_STYLE_CONTAINER
// which is a container that goes underneath the HOME_SCREEN_GREETING_STYLE_CONTAINER
// const variable.

const HOME_SCREEN_BUTTON_STYLE_CONTAINER = {
        position: "fixed", 
        top: "40%", 
        left: "50%", 
        transform: "translate(-50%, -50%)", 
        color: "white", 
        fontFamily: "'Lexend', sans-serif", 
        fontSize: "1.5rem", 
        fontWeight: 500, 
        padding: "8px", 
        textShadow: "1px 1px 2px rgba(0,0,0,0.5)", 
        zIndex: 10
}


// this is the regular button option
const button = {
        backgroundColor: 'rgb(96, 96, 96)', 
        color: 'white', 
        border: 'none', 
        padding: '10px 20px', 
        borderRadius: '5px', 
        cursor: 'pointer', 
        marginRight: '10px'
}


function App() {
        return (
                <>
                        <SystemStatusBar />



                        <div style={HOME_SCREEN_GREETING_STYLE_CONTAINER}>
                                Good Morning
                                <ul></ul>
                        </div>


                        <div style={HOME_SCREEN_BUTTON_STYLE_CONTAINER}>
                                <button style={button}>Subjects</button>
                                <button style={button}>Apps</button>
                        </div>

                        <AppsZeroLayer />

                        <SystemNavigationBar />
                </>
        );
}

export default App;
