# https://nodesource.com/blog/installing-node-js-tutorial-using-nvm-on-mac-os-x-and-ubuntu/

# Specific Version
node_version=$1

#Installing nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | zsh

source ~/.zshrc 

if [ $node_version ]; then
    echo "Installing node $node_version"
    nvm install v$node_version
    nvm use v$node_version
else
    echo "Installing the latest node version"
    nvm install node
    nvm use node
fi