# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` timestamp until script has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &


apt-get update

sudo apt-get install curl -y
sudo apt-get install wget -y
sudo apt-get install git -y
sudo apt-get install tree -y
sudo apt-get install vim -y
sudo apt-get install yarn -y
sudo apt-get install openvpn -y
sudo apt-get install network-manager-openvpn -y


sudo snap install postman
sudo snap install skype --classic
sudo snap install vlc

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts # install node LTS version


# atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom -y

# Zsh installation
sudo apt install zsh -y
# set zsh as default shell
# Note that this will not work if Zsh is not in
# your authorized shells list (/etc/shells) or
# if you don't have permission to use chsh
chsh -s $(which zsh)
# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh prompt
npm install -g spaceship-prompt


# Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y

# install jetbrains toolbox
# https://www.jetbrains.com/es-es/toolbox-app/download/download-thanks.html
