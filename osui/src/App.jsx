//  ██████      ███████     ██    ██     ██                                                           
// ██    ██     ██          ██    ██     ██                                                           
// ██    ██     ███████     ██    ██     ██                                                           
// ██    ██          ██     ██    ██     ██                                                           
//  ██████      ███████      ██████      ██                                                           
//                                              

//  Operating System User Interface. 

import React from 'react';
import SystemNavigationBar from '@src/system-navigation-bar.jsx';
import SystemStatusBar from '@src/system-status-bar.jsx';
import '@src/App.css';
import '@src/system-status-bar.css';
import '@src/system-navigation-bar.css';
import '@src/animations.css';

function App() {
        return (
                <>
                        <SystemStatusBar />
                        <div
                                style={{
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
                                }}
                        >
                                Good Morning
                                <ul></ul>
                        </div>


                        <div style={{ position: "fixed", top: "40%", left: "50%", transform: "translate(-50%, -50%)", color: "white", fontFamily: "'Lexend', sans-serif", fontSize: "1.5rem", fontWeight: 500, padding: "8px", textShadow: "1px 1px 2px rgba(0,0,0,0.5)", zIndex: 10 }}>
                                <button style={{ backgroundColor: 'rgb(96, 96, 96)', color: 'white', border: 'none', padding: '10px 20px', borderRadius: '5px', cursor: 'pointer', marginRight: '10px' }}>Subjects</button>
                        </div>
                        <SystemNavigationBar />
                </>
        );
}

export default App;
