// ██████   █████   ██████ ██   ██  █████   ██████  ███████     ███    ███  █████  ███    ██  █████   ██████  ███████ ███    ███ ███████ ███    ██ ████████ 
// ██   ██ ██   ██ ██      ██  ██  ██   ██ ██       ██          ████  ████ ██   ██ ████   ██ ██   ██ ██       ██      ████  ████ ██      ████   ██    ██    
// ██████  ███████ ██      █████   ███████ ██   ███ █████       ██ ████ ██ ███████ ██ ██  ██ ███████ ██   ███ █████   ██ ████ ██ █████   ██ ██  ██    ██ 
// ██      ██   ██ ██      ██  ██  ██   ██ ██    ██ ██          ██  ██  ██ ██   ██ ██  ██ ██ ██   ██ ██    ██ ██      ██  ██  ██ ██      ██  ██ ██    ██ 
// ██      ██   ██  ██████ ██   ██ ██   ██  ██████  ███████     ██      ██ ██   ██ ██   ████ ██   ██  ██████  ███████ ██      ██ ███████ ██   ████    ██ 
//                                                                                                                                                       
//                                                                                                                                                       
// Package Management in the backend allows the ability to update packages on Smith-Pad-OS, or Arch Linux based distributions.          
//                                                                                                                                                       
//                                                                                                                                                       
//                                                                                                                                                       
//                                                                                                                                                       
//                                                                                                                                                       
                                                                                                                                                         // 

/**
	@doc 
	------
	This function allows the ability in backend, which is this backend, being interacted 
	based on the user pressing a button called Update. Then in the backend, which is in
	index.py, will launch kitty for an adminstrator enter a sudo password. Before updating
	packages via pacman package manager.  


	var updatePackages = VARIABLE 


	1. Create a variable called updatePackages and initialize a XMLHttpRequest to flask 
	2. Call flask to do it's thing 
	3. Send it	
**/

function update_packages() {
        var updatePackages  = new XMLHttpRequest();
        updatePackages.open('POST', '/update_packages');
        updatePackages.send();

}


update_packages();
