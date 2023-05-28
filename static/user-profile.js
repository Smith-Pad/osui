/**
 * user-profile.js
 * -----------------
 * 
 * This script allows the ability to display the user's profile picture 
 * from /var/lib/AccountsService/icons/
 * 
 * 
 */



const userProfile = `/var/lib/AccountsService/icons/`;
const profilePic = document.getElementById("profile-pic");
profilePic.setAttribute("src", userProfile);