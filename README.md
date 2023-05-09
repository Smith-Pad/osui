<img src="./osui-logo.png"></img>


<h1 align="center">Operating System User Interface </h1>



<h2 align="center">What is it?</h2>

<p align="center">
OSUI is a desktop environment for Linux, allowing students, teachers and 
educators to interact with the Linux system in a more easier way, thanks
to it's Smith-Pad's Interface.
</p>


<h2 align="center">What is the benefit of it</h2>

<li> It just works </li>
<li> No technical difficulties </li>
<li> Allow students to get work done </li>
<li> Allows teachers to prevent any technical difficulties </li>
<li> Consistant UI that is on an operating system as soon as the user opens up the device</li>
<li> Smith-Pad's offline lessons allows students to learn subjects anywhere </li>

<h1 align="center">Getting Started</h1>
<h2 align="center">What are the dependencies for running this thing?</h2>
<p align="center">
So what are the dependencies for running this thing? 
</p>

<p align="center">
Well, the easier way to find out, is to run this script 
</p>

<p align="center">
Which is provided in this repository called <code>dependency-install.sh</code> 
</p>


<p align="center">
Since it uses lots and lots of dependencies for OSUI to work. 
</p>

<h2 align="center">But wait... there are just a little manual stuff to do... which is pretty easy</h2>

<i> Step 1: </i>



<p align="left"> 
Here are the list of distributions based on the `dependency-install.sh` script. 
to install `git` manually 
</p>

<p align="left"> 
Because we have to <code> git </code> to make everything work right....
</p>


<li align="left">
<code> sudo pacman -S git --noconfirm </code>
</li>



<li align="left">
<code> sudo zypper install git </code>
</li>


<li align="left">
<code> sudo dnf install git -y </code>
</li>



<i> Step 2: </i>



<p align="left"> 
Then we have to clone the repository: 
</p>


<li align="left">
<code> git clone https://github.com/smith-pad/osui </code>
</li>

<i> Step 3: </i>



<p align="left"> 
Change the directory to OSUI 
</p>

<li align="left">
<code> cd osui</code>
</li>


<i> Step 4: </i>



<p align="left"> 
In the osui directory, please run this script: 
</p>

<li align="left">
<code> sh dependency-install.sh</code>
</li>


<i> Step 5: </i>



<p align="left"> 
How you are ready to debug and develop OSUI 
</p>