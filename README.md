# dotfiles
Neovim base setting

usage example
```
# download dotfiles
git clone --depth 1 https://github.com/mshibatatt/dotfiles.git
rm -rf dotfiles/.git

# copy docker-compose
# include Dockerfile into Dockerfile.nvim
# change container name in docker-compose
# you can skip if set up nvim in container
cp dotfiles/docker-compose.yml .
cp dotfiles/Dockerfile.nvim .
# use ignore file if you use some AI tool
# example of aider
cp dotfiles/.aiderignore .

# run
docker compose up --build -d
docker compose exec editor bash

# stop container
docker compose stop
# restart
docker compose start
```
