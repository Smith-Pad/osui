// Subjects Layer


// This layer allows individual to realize with a subjects menu
// integrated with OSUI. Which allows the ability to get individuals
// to get tactile learning experience while learning in the classroom
// environment. 


// In the subjects layer, there are three buttons, which is the close button
// to go back to the home screen, the latest assignments button, to see the 
// latest assignments zero layer, and the progress zero layer.


 



import React from "react";

export default function FullScreenPopup() {
    const [isOpen, setIsOpen] = React.useState(true);

    const closePopup = () => setIsOpen(false);

    return (
        <>-0
            {isOpen && (
                <div
                    style={{
                        position: "fixed",
                        top: 0,
                        left: 0,
                        width: "100vw",
                        height: "100vh",
                        backgroundColor: "white",
                        zIndex: 9999,
                        display: "flex",
                        flexDirection: "column",
                        justifyContent: "center",
                        alignItems: "center",
                    }}
                >




                    <h2>Zero Layer Subjects</h2>
                    <p></p>
                    <button
                        onClick={closePopup}
                        style={{
                            padding: "10px 20px",
                            backgroundColor: "#dc3545",
                            color: "white",
                            border: "none",
                            cursor: "pointer",
                            borderRadius: "5px",
                            marginTop: "20px",
                        }}
                    >
                        Close
                    </button>



                    <button
                        style={{
                            padding: "10px 20px",
                            backgroundColor: "#dc3545",
                            color: "white",
                            border: "none",
                            cursor: "pointer",
                            borderRadius: "5px",
                            marginTop: "20px",
                        }}
                    >
                        Latest Assignments
                    </button>




                    <button
                        style={{
                            padding: "10px 20px",
                            backgroundColor: "#dc3545",
                            color: "white",
                            border: "none",
                            cursor: "pointer",
                            borderRadius: "5px",
                            marginTop: "20px",
                        }}
                    >
                        My Progress
                    </button>




                </div>
            )}
        </>
    );
}
