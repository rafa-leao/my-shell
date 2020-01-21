echo "========================================================================="
echo "To install aws cli you need to install the snap, do you want to continue?"
echo "yes to continue [Enter] to cancel"
read confirmation
echo "========================================================================="

if [ $confirmation ]; then
    echo "Installing snap"
    sudo apt install snapd
else
    sudo snap install aws-cli --classic
    aws --version
fi

echo "========================================================================="
echo "Do you want configure aws"
echo "Y to continue [Enter] to cancel"
read confirmation
echo "========================================================================="

if [ $confirmation ]; then
    aws configure
else
    echo "Bye"
fi