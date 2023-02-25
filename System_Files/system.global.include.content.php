<?php
function content() {
        
                                        print('<div class="FOIL-layout-regular-no-shadow">');


                                        print('<FOIL-font-size-60> <div id="time_service"></div> </FOIL-font-size-60>');
                                        print('<script src="src/FOIL-time.js"></script>');
                                        print('<FOIL-font-size-40> Menu </FOIL-font-size-40>');

                                        /********************************************************************************************************
                                         * -------------------------------------------------
                                         * This is where the home screen buttons should go. 
                                         * -------------------------------------------------
                                         * There are two functions to this. 
                                         * 
                                         * 
                                         * 1. <button type="submit" name="<<<ID>>" class="FOIL-button-regular-no-shadow"><<<NAME HERE>></button> 
                                         *                      ===========================================================
                                         *                      INFO: If you are using this, use the: 
                                         *                      ===========================================================
                                         *                                          if(isset($_POST['<<ID>>'])) {
                                         *                                               shell_exec('<<COMMAND LINE HERE>>');
                                         *                                          }
                                         *                      ===========================================================
                                         * 
                                         * 
                                         * 2. <a href="<<ROUTE>>" class="FOIL-button-regular-no-shadow"><<BUTTON NAME>></a>
                                        /*******************************************************************************************************/


                                        print('<form method="post" align="center">');
                                        print('<button type="submit" name="appsmenu" class="FOIL-button-regular-no-shadow">Apps</button>');
                                        print('<a href="#" class="FOIL-button-regular-no-shadow">Settings</a>');
                                        print('<a href="./Views/Subjects/index.php" class="FOIL-button-regular-no-shadow">Subjects</a>');
                                        print('</form>');


                                        print('</div>');
        


                                        /*********************************************************************************************
                                         * 
                                         * Based on [<button type="submit" name="<>"], this will call bash or any other shell like 
                                         * bash, sh, etc... and open or do something. 
                                         * 
                                        /*********************************************************************************************/

                                        if(isset($_POST['appsmenu'])) {
                                                shell_exec('nwggrid');
                                        }
}
content();
?>