#!/usr/bin/env bash

alias docker_wipe_images="docker rmi --force \$(docker images -q)"
alias dcu="docker-compose up"
alias drmi="docker rmi \$(docker images -aq)"
alias drmc="docker rm \$(docker ps -aq)"
alias drmv="docker volume rm \$(docker volume ls -q)"
