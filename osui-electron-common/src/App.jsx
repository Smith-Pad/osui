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

import React from 'react';
import SystemNavigationBar from '@src/system-navigation-bar.jsx';
import SystemStatusBar from './system-status-bar.jsx';
import SubjectsZeroLayer from "./system-subjects-zero-Layer.jsx";
import '@src/App.css';
import './system-status-bar.css';
import '@src/system-navigation-bar.css';
import '@src/animations.css';



// this is the greeting style style
const greetingStyle  = {
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
const regularButton = {
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



                        <div style={greetingStyle}>
                                Good Morning
                                <ul></ul>
                        </div>


                        <div style={HOME_SCREEN_BUTTON_STYLE_CONTAINER}>
                                <button style={regularButton}>Subjects</button>
                                <button style={regularButton}>Apps</button>
                        </div>

                        <SubjectsZeroLayer />

                        <SystemNavigationBar />
                </>
        );
}

export default App;
