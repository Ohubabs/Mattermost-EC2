## Bash script to Install Terraform and AWS CLI v2

#!/bin/bash
sudo hostnamectl set-hostname terraform
sudo timedatectl set-timezone America/Los_Angeles
sudo apt update -y
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update -y
sudo apt-get install terraform
sudo apt update -y
sudo apt install unzip
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install
sudo apt update -y
sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
sudo service sshd restart

#sudo apt install vault
#sudo apt update -y
