#!/bin/bash

docker run --rm -i -t debian:jessie sh -c "apt-get update && apt-get install -y python python-dev curl wget git cmake build-essential vim-nox tmux && curl https://raw.githubusercontent.com/achew22/dotfiles/master/INSTALL | bash -x && /bin/bash"
