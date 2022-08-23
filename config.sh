#!/bin/bash

echo "#####################"
echo "###  COPY .ZSHRC  ###"
echo "#####################"
if [ -f /home/$USER/.zshrc ]; then
  mv .zshrc .zshrc.bak
  cp /home/$USER/Github/dot-files/zshrc /home/$USER/.zshrc
else
  cp /home/$USER/Github/dot-files/zshrc /home/$USER/.zshrc
fi
echo " "

echo "######################"
echo "###  COPY .BASHRC  ###"
echo "######################"
echo "Copy .bashrc in home directory"
if [ -f /home/$USER/.bashrc ]; then
  mv .bashrc .bashrc.bak
  cp /home/$USER/Github/dot-files/bashrc /home/$USER/.bashrc
else
  cp /home/$USER/Github/dot-files/bashrc /home/$USER/.bashrc
fi
echo " "

echo "#########################"
echo "###  COPY WALLPAPERS  ###"
echo "#########################"
mkdir /home/$USER/.wallpapers
cp /home/$USER/Github/dot-files/Wallpapers/* /home/$USER/.wallpapers/
echo " "

echo "#######################"
echo "###  COPY SSH-KEYS  ###"
echo "#######################"
mkdir /home/$USER/.ssh
cp /home/$USER/Github/dot-files/ssh/* /home/$USER/.ssh/
echo " "

echo "#########################"
echo "###  COPY VIM CONFIG  ###"
echo "#########################"
mkdir /home/$USER/.vim
cp /home/$USER/Github/dot-files/Applications/vim/* /home/$USER/.vim
cp /home/$USER/Github/dot-files/Applications/vimrc /home/$USER/.vimrc
vim +PlugInstall +qall
echo " "

echo "############################"
echo "###  COPY TYPORA CONFIG  ###"
echo "############################"
if [ -d /home/$USER/.config/Typora/themes ]; then
  cp /home/$USER/Github/dot-files/Applications/TyporaThemes/* /home/$USER/.config/Typora/themes/
else
  mkdir -p /home/$USER/.config/Typora/themes
  cp /home/$USER/Github/dot-files/Applications/TyporaThemes/* /home/$USER/.config/Typora/themes/
fi
echo " "

echo "###############################"
echo "###  COPY XOURNAL++ CONFIG  ###"
echo "###############################"
if [ -d /home/$USER/.config/xournalpp ]; then
  cp /home/$USER/Github/dot-files/Applications/xournalpp/* /home/$USER/.config/xournalpp/
else
  mkdir -p /home/$USER/.config/xournalpp
  cp /home/$USER/Github/dot-files/Applications/xournalpp/* /home/$USER/.config/xournalpp/
fi
echo " "

echo "##########################"
echo "###  INSTALL PACKAGES  ###"
echo "##########################"
yay -S --needed - < /home/$USER/Github/dot-files/packages.txt
yay -S --needed - < /home/$USER/Github/dot-files/aurs.txt
echo " "

echo "#############################"
echo "###  INSTALL ZSH PLUGINS  ###"
echo "#############################"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
echo " "

echo "##################"
echo "###  ALL DONE  ###"
echo "##################"


