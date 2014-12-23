docker-ip() {
  boot2docker ip 2> /dev/null
}
alias dockercleancontainers="docker ps -a -notrunc | grep 'Exit' | awk '{print \$1}' | xargs -L 1 docker rm"
alias dockercleanimages="docker images -a -notrunc | grep none | awk '{print \$3}' | xargs -L 1 docker rmi"
alias dockerclean="dockercleancontainers && dockercleanimages"
