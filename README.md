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
docker compose up --build
docker compose run editor bash
```

example in case use nvim-remote
```
# run nvim in server
docker compose run -p 8888:8888 editor nvim --headless --listen 0.0.0.0:8888
# connect from another terminal
nvim --remote-ui --server localhost:8888
```

