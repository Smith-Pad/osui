<!----------------------------------------------------------------
    system.home.screen.foil.bar.settings.panel.php

    Used to display a foil bar panel that contains the settings 
    menu in the home screen. 
---------------------------------------------------------------->



<settings>
            <div id="settings" class="activate">
                <div class="settings">
                    <h1>Settings </h1>
                 
                    <a class="settingsclose" href="#">&times;</a>
                    
        
                    <h4> Power Options</h4>
                    <a href="./Power/reboot.php" class="button-no-animate-mode button curve button small button orange">Restart</a>
                
                    
                  
                    <a href="./Power/shutdown.php" class="button-no-animate-mode button curve button small button orange">Shutdown</a>
                    <h4> Software Update </h4> 

                    <a href="./Update-Tool/index.php" class="button-no-animate-mode button curve button small button orange">Update Smith Pad</a>
                    
                    <?php include 'src/avakasaya/space3.php'?>
                        </div>
    
                </div>
            </div>

    </div>
</p>