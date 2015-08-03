#!/bin/bash

command="apt-get install exuberant-ctags"

if [[ $EUID -ne 0 ]]; then
  sudo $command
else
  exec $command
fi
