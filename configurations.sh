#! /bin/bash

config=("alacritty" "helix" "lazygit")
rc=(".zshrc" ".vimrc" ".antigenrc" ".tmux.conf")

for i in ${config[@]}; do
  echo ${i};
  ln -sf  ~/.config/${i} ./${i};
done

for i in ${rc[@]}; do
  echo ${i}
  ln -sf ~/${i} ./${i};
done

