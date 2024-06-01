# dotfiles
Neovim base setting

usage example
```
# download dotfiles
git clone --depth 1 https://github.com/mshibatatt/dotfiles.git
rm -rf dotfiles/.git

# move docker-compose
# include Dockerfile into Dockerfile.nvim
# change container name in docker-compose
# you can skip if set up nvim in container
mv dotfiles/docker-compose.yml docker-compose.yml
mv dotfiles/Dockerfile.nvim Dockerfile.nvim

# run
docker compose up --build -d
docker compose exec editor bash

# stop container
docker compose stop
# restart
docker compose start
```
