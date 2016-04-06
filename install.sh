#!/bin/bash
pip install awscli
brew install icdiff docker docker-machine docker-compose docker-swarm
# this keeps internet working even when locking screen
sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport `ifconfig | grep -B 6 'status: active' | head -n 1 | cut -d : -f 1` prefs DisconnectOnLogout=NO
