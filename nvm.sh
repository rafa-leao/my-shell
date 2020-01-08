# https://medium.com/@jeancabral/ambiente-para-o-desenvolvimento-de-node-js-com-nvm-no-ubuntu-18-04-c636db90f998

# specific Version
node_version=$1

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

if [ $node_version ]; then
    echo "Installing node $node_version"
    nvm install v$node_version
else
    echo "Installing the latest node version"
    nvm install node
fi

# All nodejs version installed
nvm ls



