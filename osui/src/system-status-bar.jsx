//  ██████      ███████     ██    ██     ██                                                           
// ██    ██     ██          ██    ██     ██                                                           
// ██    ██     ███████     ██    ██     ██                                                           
// ██    ██          ██     ██    ██     ██                                                           
//  ██████      ███████      ██████      ██                                                           
//                                              

//  Operating System User Interface. 





import React, { useState, useEffect } from 'react';
import { Button } from "@fluentui/react";
import '@src/system-status-bar.css';
import SystemWarningIconOn from '@src/system-warning-icon-on.jsx';
import SystemNotificationIconOn from '@src/system-notification-icon-on.jsx';

function SystemStatusBar() {
        const [notificationCount, setNotificationCount] = useState(0);

        // const handleHomeClick = () => {
        //         console.log('Home clicked');
        // };

        // const handleMediaClick = () => {
        //         console.log('Media player clicked');
        // };

        // const handleNotificationClick = () => {
        //         console.log('Notifications clicked');
        //         setNotificationCount(0);
        // };

        // const handleControlsClick = () => {
        //         console.log('Controls clicked');
        // };

        return (
                <>      
                        <span className="senalui global-statusbar vari-1">
                                <span className="senalui global-statusbar vari-1 middle-header-text vari-1">
                                        Smith-Pad
                                </span>
                                
                                {/* Left Container with Warning and Notification */}
                                <div className="senalui global-statusbar left-container">
                                        <SystemWarningIconOn />
                                        <SystemNotificationIconOn />
                                </div>
                                
                                {/* Right Container with Time */}
                                <div className="senalui global-statusbar right-container">
                                        <div className="senalui global-statusbar container-item time-display">
                                                <span className="time-text">12:50</span>
                                        </div>
                                </div>
                        </span>
                </>
        );

}

export default SystemStatusBar;
