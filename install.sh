for package in */ ; do
    stow "$package"
    echo "Symlinked $package"
done
