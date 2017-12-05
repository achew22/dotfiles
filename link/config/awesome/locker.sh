#!/bin/bash
exec xautolock -detectsleep \
  -time 3 -locker "~/.bin/i3lock -c 101010 -d" \
  -notify 30 \
  -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'"

