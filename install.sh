read -p "Do you want to install latemp in your /usr/local/bin/ folder (y/n)?" choice
case "$choice" in
	y|Y ) echo "Thank you, if there are any updates you would like, just redownload the content and repeat this process.";;
	n|N ) echo "Ok, have a nice day." && exit 0;;
	* ) echo "Invalid input." && exit 0;;
esac

echo "Installing latemp in your /usr/local/bin/ folder..."
chmod +x ./latemp;
echo "I highly recommend reading through the script before installing it"
sudo cp ./latemp /usr/local/bin/
if [ -f "$HOME/.latemprc" ]; then
	read -p "Do you want to overwrite your current config file in "$HOME"/.latemprc (y/n)?" choice
	case "$choice" in
		y|Y ) echo "Using new config file." && cp ./config $HOME/.latemprc;;
		* ) echo "Keeping old config file.";;
esac
else
	cp ./config $HOME/.latemprc
fi
echo "---------------------------------------------------"
echo "-You can now use it by typing latemp in your shell-"
