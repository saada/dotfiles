if [ ! -f $HOME/keys/aws/id ]; then
    export AWS_ACCESS_KEY_ID=''
    echo "No AWS id found..."
  else
    export AWS_ACCESS_KEY_ID=`cat $HOME/.keys/aws/id`
fi

if [ ! -f $HOME/keys/aws/secret ]; then
    export AWS_SECRET_ACCESS_KEY=''
    echo "No AWS key found..."
  else
    export AWS_SECRET_ACCESS_KEY=`cat $HOME/.keys/aws/secret`
fi

source $HOME/plugins/aws-cli/bin/aws_zsh_completer.sh
