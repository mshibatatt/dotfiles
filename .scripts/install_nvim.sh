curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage 
chmod u+x nvim.appimage 
./nvim.appimage --appimage-extract 
./squashfs-root/AppRun --version 
ln -s /squashfs-root/AppRun /usr/bin/nvim 
rm nvim.appimage