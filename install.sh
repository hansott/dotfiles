for package in */ ; do
    stow "$package"
    echo "Installed $package"
done
echo "Done"
