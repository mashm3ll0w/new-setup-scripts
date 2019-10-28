#!bin/bash

cat << _EOF_
#########################################################################################

                        Install NVM - Node Version Manager

#########################################################################################
_EOF_
sleep 3

echo $'\n'$"Fetching and running the install script..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

sleep 2
echo $'\n'$"nvm installation complete...."



# nvm install --lts
# nvm install node
# node -v
# npm -v
# nvm use --lts