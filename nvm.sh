# https://medium.com/@jeancabral/ambiente-para-o-desenvolvimento-de-node-js-com-nvm-no-ubuntu-18-04-c636db90f998

# specific Version
node_version=$1

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# This loads nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

if [ $node_version ]; then
    echo "Installing node $node_version"
    nvm install v$node_version
    nvm use v$node_version
else
    echo "Installing the latest node version"
    nvm install node
    nvm use node
fi


