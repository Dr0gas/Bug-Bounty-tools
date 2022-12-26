#!/bin/bash

echo "Atualização do sistema"
apt update -y
apt upgrade -y
apt dist-upgrade -y
# Necessário reboot

# Criar diretório Tools
mkdir -p ~/tools

echo "Instalando unzip"
apt install -y unzip

echo "Instalando pacote Net Tools"
apt install -y net-tools

echo "Instalando Git"
apt install -y git

echo "Instalando instalador de pacotes Cargo"
apt install -y cargo

echo "Instalando Tmux"
apt install -y tmux
tee -a ~/.tmux.conf << END
# Mouse Usage in Tmux
set -g mouse on

# Increase History
set-option -g history-limit 5000

# Numbering Windows and Panes
set -g base-index 1
setw -g pane-base-index 1
set -g renumber-windows on

# More Intuitive Split Commands
bind - split-window -hc "#{pane_current_path}"
bind | split-window -vc "#{pane_current_path}"

# Swapping Windows
bind -r "<" swap-window -d -t -1
bind -r ">" swap-window -d -t +1

# Keeping Current Path
bind c new-window -c "#{pane_current_path}"
END
tmux source-file ~/.tmux.conf

echo "Instalando visualizador de texto Bat"
apt install -y bat

echo "Instalar Linguagens de Programação"
# Python
apt install -y python3-pip
apt install -y python2
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output /tmp/get-pip.py
python2 /tmp/get-pip.py

# Go 1.19.1
wget https://go.dev/dl/go1.19.1.linux-amd64.tar.gz -O /tmp/go1.19.1.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf /tmp/go1.19.1.linux-amd64.tar.gz
echo "export GOROOT=/usr/local/go" >> ~/.bashrc
echo "export GOPATH=\$HOME/go" >> ~/.bashrc
echo "export PATH=\$GOPATH/bin:\$GOROOT/bin:\$HOME/.local/bin:\$PATH" >> ~/.bashrc
source ~/.bashrc

# Jq
apt install -y jq

# Instalação do locate   
apt install -y mlocate
updatedb && locate -e bench-repo

# Instalar NPM
apt install -y npm

Instalar Js-beautify
npm -g install js-beautify

# Google Chrome
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/tools/google-chrome-stable_current_amd64.deb
apt-get install -f -y
dpkg -i ~/tools/google-chrome-stable_current_amd64.deb
