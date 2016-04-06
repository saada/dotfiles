# setup the dev docker machine if it's running
docker-machine ls | grep dev | grep -i running && eval "$(docker-machine env dev)"

# source: @jfrazelle's dotfiles
hollywood(){
	docker run --rm -it \
		--name hollywood \
		jess/hollywood
}
# source: @jfrazelle's dotfiles
htop(){
	docker run --rm -it \
		--pid host \
		--net none \
		--name htop \
		jess/htop
}

# remove exited containers and dangling images. greatly frees up disk space
docker_clean() {
    echo "cleaning up exited containers and dangling images..."
    # suppress errors
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null || true
	docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null || true
    docker rmi $(docker images | grep '^<none>' | awk '{print $3}' 2>/dev/null) 2>/dev/null || true
}

# remove ALL containers (including running) and images
docker_wipe() {
    docker rm -f $(docker ps -aq) 2>/dev/null || true
    docker rmi -f $(docker images -aq) 2>/dev/null || true
}

# kill all containers
docker_kill_all() {
  echo "killing all containers..."
  docker kill $(docker ps -q)
}