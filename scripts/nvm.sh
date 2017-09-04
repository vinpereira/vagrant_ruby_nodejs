# !/usr/bin/env bash

if [[ ! -e $HOME/.nvm ]]; then
    echo "=============================================="
    echo "Installing NVM"
    wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    echo "=============================================="
    echo "Installing Nodejs 8.4.0"
    nvm install v8.4.0
    echo "=============================================="
    echo "Installing Chromedriver, geckodriver, and phantomjs"
    npm install -g chromedriver
    npm install -g geckodriver
    npm install -g phantomjs
fi