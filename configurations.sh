#! /bin/bash

config=("alacritty" "helix" "lazygit")
rc=(".zshrc" ".vimrc" ".antigenrc" ".tmux.conf")

for i in ${config[@]}; do
  echo ${i};
  cp -r  ~/.config/${i}/ ./${i}/;
done

for i in ${rc[@]}; do
  echo ${i}
  cp ~/${i} ./${i};
done

rm -rf ./alacritty/themes/.git
