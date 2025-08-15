// Apps Zero Layer v.1.0

import React from "react";

// Import the Microsoft FluentUI React Components
import { DefaultButton, PrimaryButton } from "@fluentui/react";


// onClick={closePopup}


export default function FullScreenPopup() {
        const [isOpen, setIsOpen] = React.useState(true);

        const closePopup = () => setIsOpen(false);

        return (
                <>
                        {isOpen && (
                                <div
                                        style={{
                                                position: "fixed",
                                                top: 0,
                                                left: 0,
                                                width: "100vw",
                                                height: "100vh",
                                                backgroundColor: "rgb(0, 0, 0)",
                                                zIndex: 9999,
                                                color: "white",
                                        }}
                                >


                                        <div
                                                style={{
                                                        backgroundColor: "rgb(255, 255, 255)",
                                                }}


                                        >
                                                <h2>Apps</h2>

                                        </div>




                                        



                                </div>
                        )}
                </>
        );
}
