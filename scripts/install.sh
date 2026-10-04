#!/bin/sh

# Upgrade Ubuntu
sudo apt -y update && sudo apt -y upgrade

# FastFetch
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch && sudo apt -y update && sudo apt install -y fastfetch

# Utilities:
# - Bat
# - Btop
# - Eza
sudo apt install -y btop bat eza

# Docker
sudo apt install apt-transport-https ca-certificates curl -y
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt -y update
sudo apt install docker-ce docker-ce-cli containerd.io -y
sudo usermod -a -G docker ubuntu

# Tailscale
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/resolute.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/resolute.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list
sudo apt update -y && sudo apt install -y tailscale

# Reboot system after install
sudo reboot
