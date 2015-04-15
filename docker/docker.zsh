( boot2docker status | ( grep -i "running" >/dev/null 2>&1 ) ) && $(boot2docker shellinit)
