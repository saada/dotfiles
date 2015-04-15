if [ ! -f $HOME/.keys/digitalocean/secret ]; then
    export DIGITAL_OCEAN_ACCESS_KEY=''
    echo "No DigitalOcean key found..."
  else
    export DIGITAL_OCEAN_ACCESS_KEY=`cat $HOME/.keys/digitalocean/secret`
fi
