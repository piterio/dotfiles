# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` timestamp until script has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &


apt-get update

sudo apt-get install curl
sudo apt-get install wget
sudo apt-get install git
sudo apt-get install tree
sudo apt-get install yarn
sudo apt-get install nvm
sudo apt-get install vim
sudo apt-get install z
sudo apt-get install thefuck


# Zsh installation
sudo apt install zsh
# set zsh as default shell
# Note that this will not work if Zsh is not in
# your authorized shells list (/etc/shells) or
# if you don't have permission to use chsh
chsh -s $(which zsh)
# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# zsh prompt
npm install -g spaceship-prompt
