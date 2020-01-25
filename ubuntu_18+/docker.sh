sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
# create docker group so you don't need to be super user to use it
sudo groupadd docker
sudo usermod -aG docker $USER
echo "Restart this terminal and try to use docker without sudo. If it did not worked, try rebooting your PC"
