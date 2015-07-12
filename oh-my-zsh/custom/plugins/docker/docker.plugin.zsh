alias dco=docker-compose
alias dm=docker-machine

docker-delete-all-untagged-dangled-images() {
  docker rmi $(docker images -q -f dangling=true)
}

docker-kill-all-running(){
  docker kill $(docker ps -q)
}
docker-delete-all-images(){
  docker rmi $(docker images -q)
}

docker-delete-all-stopped-containers(){
  docker rm $(docker ps -a -q)
}

docker-machine-create(){
  docker-machine create -d virtualbox \
    --virtualbox-cpu-count "4" \
    --virtualbox-disk-size "30000" \
    --virtualbox-memory "3072" \
    --engine-insecure-registry dockerregistry:8085 \
    $1
  echo $(dm ip) "dockerhost-$1" | sudo tee -a /etc/hosts
}

setMachine(){
  eval $(dm env $1)
}
