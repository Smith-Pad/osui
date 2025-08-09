//  ██████      ███████     ██    ██     ██                                                           
// ██    ██     ██          ██    ██     ██                                                           
// ██    ██     ███████     ██    ██     ██                                                           
// ██    ██          ██     ██    ██     ██                                                           
//  ██████      ███████      ██████      ██                                                           
//                                              

//  Operating System User Interface. 





import React, { useState, useEffect } from 'react';
import { Button } from "@fluentui/react";
import Scroll from '@src/Scroll.jsx'
import SystemNavigationBar from '@src/system-navigation-bar.jsx'
import SystemStatusBar from '@src/system-status-bar.jsx'
import '@src/App.css';
import '@src/system-status-bar.css';
import '@src/system-navigation-bar.css';
import '@src/animations.css';


function App() {

        return (
                <>
                        <SystemStatusBar />
                        <SystemNavigationBar />
                        <Scroll />
                </>
        );

}

export default App;
