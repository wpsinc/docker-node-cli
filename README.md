# docker-node-cli

#### Docker build
```shell
docker build --rm --force-rm --tag="wpsinc/docker-node-cli" ./
```

#### Example Aliases
```shell
alias npm='docker run --rm -it --network="host" -v "$PWD":/data -v ~/.config:/.config -v ~/.npm:/.npm --user $(id -u):$(id -g) wpsinc/docker-node-cli npm'
alias node='docker run --rm -it --network="host" -v "$PWD":/data --user $(id -u):$(id -g) wpsinc/docker-node-cli node'
alias gulp='docker run --rm -it --network="host" -v "$PWD":/data --user $(id -u):$(id -g) wpsinc/docker-node-cli gulp'
alias bower='docker run --rm -it --network="host" -v "$PWD":/data --user $(id -u):$(id -g) wpsinc/docker-node-cli bower'
alias yarn='docker run --rm -it --network="host" -v "$PWD":/data --user $(id -u):$(id -g) wpsinc/docker-node-cli yarn'
alias gulp-drupal='docker run --rm -it --network="host" -v $(dirname "$PWD"):/data --user $(id -u):$(id -g) -w /data/.npm wpsinc/docker-node-cli gulp'
```