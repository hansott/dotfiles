for package in */ ; do
	echo "Installing $package..."
	stow "$package"
done

echo "Installing vim plugins..."
vim +PluginInstall +qall

echo "Done"
