# https://medium.com/@yutafujii_59175/a-complete-one-by-one-guide-to-install-docker-on-your-mac-os-using-homebrew-e818eb4cfc3

# Installing Docker
brew install docker

# Installing Docker Machine because docker cant use native OS
brew install docker-machine

# Installing virtualBox becausa docker cant create machine without vb
brew cask install virtualbox

echo "Any error message? [y/N]"
read error

if [ $error == "y"]; then
    echo "If you see an error message follow this tutorial https://medium.com/@yutafujii_59175/a-complete-one-by-one-guide-to-install-docker-on-your-mac-os-using-homebrew-e818eb4cfc3"
    echo "Successfully installed? Nice! run this shell again"
    exit 1
fi


# Creating a machine
docker-machine create --driver virtualbox default

docker-machine ls

# Using machine created
docker-machine env default

# Shell using new machine
eval $(docker-machine env default)

brew cask install docker

echo "In Applications open docker app it will give all permissions"
