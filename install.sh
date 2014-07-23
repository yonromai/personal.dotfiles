#/bin/bash

command -v rake >/dev/null 2>&1 || sudo apt-get install rake

sh -c "`curl -fsSL https://raw.github.com/skwp/dotfiles/master/install.sh`"

mkdir ~/.dotfiles
cd ~/.dotfiles

git clone https://github.com/yonromai/personal.dotfiles
git clone https://ghe.spotify.net/romain/spotify.dotfiles

./personal.dotfiles/bootstrap
./spotify.dotfiles/bootstrap

echo 'Please restart session to update'
