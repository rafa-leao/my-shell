# https://ohmyz.sh/

echo "Installing curl first"

brew install curl

echo "Installing ohmyzsh with curl"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"