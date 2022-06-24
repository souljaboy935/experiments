#!/bin/bash

# export DEBIAN_FRONTEND=noninteractive
# apt update ; apt install -y sudo wget software-properties-common build-essential tcl git unzip curl python net-tools nginx ; apt clean all
# curl -O https://dl.google.com/go/go1.13.3.linux-amd64.tar.gz ; tar -C /usr/local -xzf go1.13.3.linux-amd64.tar.gz ; rm -rf go1.13.3.linux-amd64.tar.gz
# useradd -m -s /bin/bash webchain ; su - webchain 
# echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> ~/.bashrc ; source ~/.bashrc
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash ; export NVM_DIR="$HOME/.nvm" ; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" ; [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" ; nvm install v8.17.0 ; command -v nvm ; npm -v ; nvm list

cd /opt/pool ; make
cd www/ ; npm install -g ember-cli@2.4.3 ; npm -g install @babel/core@^7.0.0-beta.42 ; npm install -g bower ; npm install ; bower install ; ./build.sh
# cd www/ ; npm install -g ember-cli ; npm install -g bower ; npm install ; bower install ; ./build.sh
/opt/pool/build/bin/webchain-pool /opt/config.json