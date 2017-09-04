# !/usr/bin/env bash

sudo apt-get update

if [[ ! -e $HOME/.rbenv ]]; then
  echo "=============================================="
  echo "Install rbenv"
  git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.profile
  echo 'eval "$(rbenv init -)"' >> $HOME/.profile

  echo "=============================================="
  echo "Install ruby-build"
  git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> $HOME/.profile
  
  echo "=============================================="
  echo "Setup gemrc"
  echo 'install: --no-document' >> $HOME/.gemrc
  echo 'update: --no-document' >> $HOME/.gemrc

  source $HOME/.profile

  echo "=============================================="
  echo "Install ruby"
  rbenv install 2.4.1
  rbenv global 2.4.1

  ruby -v

  echo "=============================================="
  echo "Install bundler"
  gem install bundler
fi