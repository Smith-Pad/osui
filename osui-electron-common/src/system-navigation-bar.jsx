//  ██████      ███████     ██    ██     ██                                                           
// ██    ██     ██          ██    ██     ██                                                           
// ██    ██     ███████     ██    ██     ██                                                           
// ██    ██          ██     ██    ██     ██                                                           
//  ██████      ███████      ██████      ██                                                           
//                                              

//  Operating System User Interface. 





import React, { useState, useEffect } from 'react';
import { Button } from "@fluentui/react";
import '@src/system-navigation-bar.css';


function SystemNavigationBar() {
        const [notificationCount, setNotificationCount] = useState(0);

        const handleHomeClick = () => {
                console.log('Home clicked');
        };

        const handleMediaClick = () => {
                console.log('Media player clicked');
        };

        const handleNotificationClick = () => {
                console.log('Notifications clicked');
                setNotificationCount(0);
        };

        const handleControlsClick = () => {
                console.log('Controls clicked');
        };

        return (
                <>
                        <div className="senalui-global-navigation-bar-vari-1">

                                <div className="senalui-global-navigation-bar-vari-1-item" onClick={handleHomeClick}>
                                        <span className="senalui-global-navigation-bar-vari-1-item-label">
                                                {/* Home Icon */}
                                                <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="none" viewBox="0 0 28 28" aria-label="Home">
                                                        {/* Retro home icon: simple pixel-style house */}
                                                        <rect x="7" y="13" width="14" height="8" fill="currentColor" />
                                                        <rect x="11" y="16" width="4" height="5" fill="#fff" />
                                                        <polygon points="14,6 5,13 23,13" fill="currentColor" />
                                                </svg>
                                        </span>
                                </div>


                                <div className="senalui-global-navigation-bar-vari-1-item" onClick={handleMediaClick}>
                                        <span className="senalui-global-navigation-bar-vari-1-item-label">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="none" viewBox="0 0 28 28" aria-label="Audio">
                                                        <path d="M8 11v6h4l5 5V6l-5 5H8z" fill="currentColor"/>
                                                </svg>
                                        </span>
                                </div>

                                <div className="senalui-global-navigation-bar-vari-1-item" onClick={handleNotificationClick}>
                                        <span className="senalui-global-navigation-bar-vari-1-item-label">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="none" viewBox="0 0 28 28" aria-label="Notifications">
                                                        <path d="M14 25a3 3 0 0 0 3-3h-6a3 3 0 0 0 3 3zm7-7v-6a7 7 0 0 0-14 0v6l-1.707 1.707A1 1 0 0 0 5 21h18a1 1 0 0 0 .707-1.707L21 18zm-2 1H9v-7a5 5 0 0 1 10 0v7z" fill="currentColor" />
                                                </svg>
                                                {notificationCount > 0 && (
                                                        <span className="notification-badge">
                                                                {notificationCount}
                                                        </span>
                                                )}
                                        </span>
                                </div>

                                <div className="senalui-global-navigation-bar-vari-1-item" onClick={handleControlsClick}>
                                        <span className="senalui-global-navigation-bar-vari-1-item-label">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="none" viewBox="0 0 28 28" aria-label="Controls">
                                                        <rect x="6" y="8" width="2.5" height="12" rx="1" fill="currentColor"/>
                                                        <rect x="12.75" y="4" width="2.5" height="16" rx="1" fill="currentColor"/>
                                                        <rect x="19.5" y="11" width="2.5" height="9" rx="1" fill="currentColor"/>
                                                </svg>
                                        </span>
                                </div>
                        </div>
                </>
        );

}

export default SystemNavigationBar;
