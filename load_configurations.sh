#! /bin/bash

config=("alacritty" "helix" "lazygit")
rc=(".zshrc" ".vimrc" ".antigenrc" ".tmux.conf")

for i in ${config[@]}; do
  echo ${i};
  cp -rf  ./${i}/ ~/.config/${i}/;
done

for i in ${rc[@]}; do
  echo ${i}
  cp -f ./${i} ~/${i};
done

