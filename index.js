const { app, BrowserWindow } = require('electron')
const path = require('path')

/**
 * 	This creates a new window 
 * 
 */
function createWindow() {
	const win = new BrowserWindow({
		width: 800,		// Sets the width of the window 
		height: 600,		// Sets the height of the window
		webPreferences: {
			preload: path.join(__dirname, 'preload.js')
		}
	})
	
	win.loadURL('http://localhost:3000/');
}

/**
 * 	After electron runs, then it will call the createWindow()
 * 	function. 
 */
app.whenReady().then(() => {
	createWindow()

	app.on('activate', () => {
		if (BrowserWindow.getAllWindows().length === 0) {
			createWindow()
		}
	})
})


app.on('window-all-closed', () => {
	if (process.platform !== 'darwin') {
		app.quit()
	}
})
