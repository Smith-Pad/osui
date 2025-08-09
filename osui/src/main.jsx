//  ██████      ███████     ██    ██     ██                                                           
// ██    ██     ██          ██    ██     ██                                                           
// ██    ██     ███████     ██    ██     ██                                                           
// ██    ██          ██     ██    ██     ██                                                           
//  ██████      ███████      ██████      ██                                                           
//                                              

//  Operating System User Interface. 





import React from 'react'
import ReactDOM from 'react-dom/client'
import App from '@src/App.jsx'

ReactDOM.createRoot(document.getElementById('root')).render(
        <React.StrictMode>
                <App />
        </React.StrictMode>,
)

// Use contextBridge
window.ipcRenderer.on('main-process-message', (event, message) => {
        console.log(message)
})