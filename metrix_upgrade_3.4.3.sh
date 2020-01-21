#!/bin/bash
# ___  ___     _        _        _   _                           _        _____           _       _   
# |  \/  |    | |      (_)      | | | |                         | |      /  ___|         (_)     | |  
# | .  . | ___| |_ _ __ ___  __ | | | |_ __   __ _ _ __ __ _  __| | ___  \ `--.  ___ _ __ _ _ __ | |_ 
# | |\/| |/ _ \ __| '__| \ \/ / | | | | '_ \ / _` | '__/ _` |/ _` |/ _ \  `--. \/ __| '__| | '_ \| __|
# | |  | |  __/ |_| |  | |>  <  | |_| | |_) | (_| | | | (_| | (_| |  __/ /\__/ / (__| |  | | |_) | |_ 
# \_|  |_/\___|\__|_|  |_/_/\_\  \___/| .__/ \__, |_|  \__,_|\__,_|\___| \____/ \___|_|  |_| .__/ \__|
#                                     | |     __/ |                                        | |        
#                                     |_|    |___/                                         |_|        
# 
#                                                                                             v3.4.3.0
# ====================================================================================================
# ****************************************************************************************************
#
# To run this install script:
# ---------------------------
#
# cd ~/
# git clone git@github.com:ckhatton/metrix-repo.git
# sudo sh metrix-repo/metrix_upgrade_3.4.3.sh $USER
#
# Script begins:
# --------------
#
# Clear screen.
clear
echo " "
echo " "
echo " "
echo " "
echo " "
echo "Stopping any instance of the Metrix deamon."
echo " "
metrixd stop
metrix-cli stop
echo " "
sleep 5
echo " "
echo " "
echo " "
echo " "
echo " "
echo "Installation started."
echo " "
echo " "
echo " "
echo " "
echo " "
cd ~/
wget https://github.com/TheLindaProjectInc/Metrix/releases/download/3.4.3/metrix-linux-x64.tar.gz
tar -xzvf metrix-linux-x64.tar.gz -C /usr/local/bin/
echo " "
echo " "
echo " "
echo " "
echo " "
echo "Wallet installed, continuing to the next step..."
echo " "
echo "3"
echo " "
sleep 1
echo "2"
echo " "
sleep 1
echo "1"
echo " "
sleep 1
echo "😌"
sleep 1
#
# Clear screen.
clear
echo " "
echo " "
echo " "
echo " "
echo " "
sudo -u $1 metrixd
echo " "
echo "Wallet has started, waiting 30 seconds..."
sleep 10
echo " "
echo "20 seconds left..."
sleep 10
echo " "
echo "10 seconds left..."
sleep 10
echo " "
echo "Check below the version, if you have any connections, and/or more than 0 blocks."
echo " "
sudo -u $1 metrix-cli getinfo
echo " "
echo " "
echo " "
echo " "
echo " "
echo "Cleaning up installation files."
echo " "
cd ~/
rm -rf metrix-repo
rm -rf metrix-linux-x64.tar.gz
echo " "
echo "All done! 😊  YaY! 🙌 🎉"
echo " "
echo " "
echo " "
echo " "
echo " "
