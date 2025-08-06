//  ██████      ███████     ██    ██     ██                                                           
// ██    ██     ██          ██    ██     ██                                                           
// ██    ██     ███████     ██    ██     ██                                                           
// ██    ██          ██     ██    ██     ██                                                           
//  ██████      ███████      ██████      ██                                                           
//                                              

//  Operating System User Interface. 





import React, { useState, useEffect } from 'react';
import { Button } from "@fluentui/react";
import Scroll from './Scroll.jsx'
import GlobalNavigationBar from './global-navigation-bar.jsx'
import './senalui.css';


function App() {

        return (
                <>
                        <h1>OSUI</h1>
                        <Scroll />
                        <GlobalNavigationBar />
                </>
        );

}

export default App;
