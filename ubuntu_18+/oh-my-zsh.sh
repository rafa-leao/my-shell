sudo apt update

echo "Installing curl first"

sudo apt install curl

echo "Installing zsh"

sudo apt install zsh

echo "Installing oh-my-zsh with curl"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Setting zsh shell default"

chsh -s $(which zsh)
