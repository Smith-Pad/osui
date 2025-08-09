import React, { useState, useEffect } from 'react';

import '@src/system-notification-icon-flash-on.css';                                          // include the css file


function SystemNotificationIconFlashOn() {
        return (
                <>
                        <div className="senalui global-statusbar container-item notification-flash">
                                <svg className="senalui global-statusbar container-icon" viewBox="0 0 24 24">
                                        <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"/>
                                        <path d="M13.73 21a2 2 0 0 1-3.46 0"/>
                                </svg>
                        </div>
                </>
        );
}

export default SystemNotificationIconFlashOn