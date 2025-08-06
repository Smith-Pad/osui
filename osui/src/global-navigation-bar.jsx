//  ██████      ███████     ██    ██     ██                                                           
// ██    ██     ██          ██    ██     ██                                                           
// ██    ██     ███████     ██    ██     ██                                                           
// ██    ██          ██     ██    ██     ██                                                           
//  ██████      ███████      ██████      ██                                                           
//                                              

//  Operating System User Interface. 





import React, { useState, useEffect } from 'react';
import { Button } from "@fluentui/react";


import './senalui.css';


function GlobalNavigationBar() {

        return (
                <>
                        <div className="senalui-global-navigation-bar-vari-1">
                                <div className="senalui-global-navigation-bar-vari-1-item">
                                        <span className="senalui-global-navigation-bar-vari-1-item-label nav-item-clickable">
                                                Media
                                        </span>
                                </div>

                                <div className="senalui-global-navigation-bar-vari-1-item">
                                        <span className="senalui-global-navigation-bar-vari-1-item-label nav-item-with-badge">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="none" viewBox="0 0 28 28" aria-label="Notifications">
                                                        <path d="M14 25a3 3 0 0 0 3-3h-6a3 3 0 0 0 3 3zm7-7v-6a7 7 0 0 0-14 0v6l-1.707 1.707A1 1 0 0 0 5 21h18a1 1 0 0 0 .707-1.707L21 18zm-2 1H9v-7a5 5 0 0 1 10 0v7z" fill="currentColor" />
                                                </svg>
                                                <span className="notification-badge">
                                                        0
                                                </span>
                                        </span>
                                </div>
                        </div>
                </>
        );

}

export default GlobalNavigationBar;
