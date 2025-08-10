//  ██████      ███████     ██    ██     ██                                                           
// ██    ██     ██          ██    ██     ██                                                           
// ██    ██     ███████     ██    ██     ██                                                           
// ██    ██          ██     ██    ██     ██                                                           
//  ██████      ███████      ██████      ██                                                           
//                                              

//  Operating System User Interface. 





import React, { useState, useEffect } from 'react';

function Scroll() {
        const [scrollY, setScrollY] = useState(0);

        useEffect(() => {
                const handleScroll = () => {
                        setScrollY(window.scrollY);
                };

                window.addEventListener('scroll', handleScroll);
                return () => window.removeEventListener('scroll', handleScroll);
        }, []);

        return (
                <>
                        <div className="parallax-container">
                                <div 
                                        className="parallax-text"
                                        style={{
                                                transform: `translateY(${scrollY * 0.5}px)`
                                        }}
                                >
                                        GOOD MORNING
                                </div>
                        </div>
                </>
        );
}

export default Scroll;
