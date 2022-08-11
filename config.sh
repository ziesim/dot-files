#!/bin/bash

echo "Copy .zshrc in home directory"
if [ -f /home/$USER/.zshrc ]; then
  mv .zshrc .zshrc.bak
  cp /home/$USER/Github/dot-files/zshrc /home/$USER/.zshrc
else
  cp /home/$USER/Github/dot-files/zshrc /home/$USER/.zshrc
fi

echo "Copy .bashrc in home directory"
if [ -f /home/$USER/.bashrc ]; then
  mv .bashrc .bashrc.bak
  cp /home/$USER/Github/dot-files/bashrc /home/$USER/.bashrc
else
  cp /home/$USER/Github/dot-files/bashrc /home/$USER/.bashrc
fi

echo "Copy Wallpapers in home directory"
mkdir /home/$USER/.wallpapers
cp /home/$USER/Github/dot-files/Wallpapers/* /home/$USER/.wallpapers/

echo "Copy ssh-Keys to home directory"
mkdir /home/$USER/.ssh
cp /home/$USER/Github/dot-files/ssh/* /home/$USER/.ssh/

echo "Copy vim config to home directory"
mkdir /home/$USER/.vim
cp /home/$USER/Github/dot-files/Applications/vim/* /home/$USER/.vim
cp /home/$USER/Github/dot-files/Applications/vimrc /home/$USER/.vimrc

echo "Typora themes to config directory"
if [ -d /home/$USER/.config/Typora/themes ]; then
  cp /home/$USER/Github/dot-files/Applications/TyporaThemes/* /home/$USER/.config/Typora/themes/
else
  mkdir -p /home/$USER/.config/Typora/themes
  cp /home/$USER/Github/dot-files/Applications/TyporaThemes/* /home/$USER/.config/Typora/themes/
fi

echo "Copy xournalpp config to config directory"
if [ -d /home/$USER/.config/xournalpp ]; then
  cp /home/$USER/Github/dot-files/Applications/xournalpp/* /home/$USER/.config/xournalpp/
else
  mkdir -p /home/$USER/.config/xournalpp
  cp /home/$USER/Github/dot-files/Applications/xournalpp/* /home/$USER/.config/xournalpp/
fi


