function cdls --wraps='cd;ls' --description 'alias cdls cd;ls'
  cd $argv;
  ls;
end

