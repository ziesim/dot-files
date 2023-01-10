#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.welcome_screen ]] && . ~/.welcome_screen

_set_liveuser_PS1() {
    PS1='[\u@\h \W]\$ '
    if [ "$(whoami)" = "liveuser" ] ; then
        local iso_version="$(grep ^VERSION= /usr/lib/endeavouros-release 2>/dev/null | cut -d '=' -f 2)"
        if [ -n "$iso_version" ] ; then
            local prefix="eos-"
            local iso_info="$prefix$iso_version"
            PS1="[\u@$iso_info \W]\$ "
        fi
    fi
}
_set_liveuser_PS1
unset -f _set_liveuser_PS1

ShowInstallerIsoInfo() {
    local file=/usr/lib/endeavouros-release
    if [ -r $file ] ; then
        cat $file
    else
        echo "Sorry, installer ISO info is not available." >&2
    fi
}


alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias la="ls -a"
alias ..="cd .."
alias ...="cd ../.."
alias ginit="git init"
alias gclone="git clone"
alias gstatus="git status"
alias gbranch="git branch"
alias gcheckout="git checkout"
alias gadd="git add"
alias gcommit="git commit -a"
alias gpush="git push"
alias gpull="git pull"
alias gitu="git add * && git commit -a && git push"
alias vsc="code . && exit"
alias yup="yay -Syyuu"
alias sx="startx"
alias src="source ~/.zshrc"
alias reflect="sudo reflector --verbose --country 'Germany' -l 200 -p https --sort rate --save /etc/pacman.d/mirrorlist"
alias spotify="flatpak run com.spotify.Client"
alias megasync="flatpak run nz.mega.MEGAsync"

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

################################################################################
## Some generally useful functions.
## Consider uncommenting aliases below to start using these functions.
##
## October 2021: removed many obsolete functions. If you still need them, please look at
## https://github.com/EndeavourOS-archive/EndeavourOS-archiso/raw/master/airootfs/etc/skel/.bashrc

_open_files_for_editing() {
    # Open any given document file(s) for editing (or just viewing).
    # Note1:
    #    - Do not use for executable files!
    # Note2:
    #    - Uses 'mime' bindings, so you may need to use
    #      e.g. a file manager to make proper file bindings.

    if [ -x /usr/bin/exo-open ] ; then
        echo "exo-open $@" >&2
        setsid exo-open "$@" >& /dev/null
        return
    fi
    if [ -x /usr/bin/xdg-open ] ; then
        for file in "$@" ; do
            echo "xdg-open $file" >&2
            setsid xdg-open "$file" >& /dev/null
        done
        return
    fi

    echo "$FUNCNAME: package 'xdg-utils' or 'exo' is required." >&2
}

#------------------------------------------------------------

## Aliases for the functions above.
## Uncomment an alias if you want to use it.
##

# alias ef='_open_files_for_editing'     # 'ef' opens given file(s) for editing
# alias pacdiff=eos-pacdiff
################################################################################

WHITE='\[\033[1;37m\]'
LIGHTGRAY='\[\033[0;37m\]'
GRAY='\[\033[1;30m\]'
BLACK='\[\033[0;30m\]'
RED='\[\033[0;31m\]'
LIGHTRED='\[\033[1;31m\]'
GREEN='\[\033[0;32m\]'
LIGHTGREEN='\[\033[1;32m\]'
BROWN='\[\033[0;33m\]' #Orange
YELLOW='\[\033[1;33m\]'
BLUE='\[\033[0;34m\]'
LIGHTBLUE='\[\033[1;34m\]'
PURPLE='\[\033[0;35m\]'
PINK='\[\033[1;35m\]' #Light Purple
CYAN='\[\033[0;36m\]'
LIGHTCYAN='\[\033[1;36m\]'
DEFAULT='\[\033[0m\]'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

LEFTDOWN="${LIGHTGRAY}\342\224\214\342\224\200"
DOWNRIGHT="${LIGHTGRAY}\342\224\224\342\224\200\342\224\200"
OBRACKET="${LIGHTGRAY}["
CBRACKET="${LIGHTGRAY}]"
DASH="${LIGHTGRAY}\342\224\200"
TIME="${OBRACKET}${YELLOW}\t${CBRACKET}"
USERHOST="${OBRACKET}${LIGHTCYAN}\u${LIGHTGRAY}@${LIGHTRED}\h${CBRACKET}"
GITBRANCH="${YELLOW}\$(parse_git_branch)"
WDIR="${OBRACKET}${LIGHTGREEN}\w${GITBRANCH}${CBRACKET}"
ARROWS="${LIGHTGREEN}>>>"

FIRSTLINE="${LEFTDOWN} ${TIME} ${DASH} ${USERHOST} ${DASH} ${WDIR}"
SECONDLINE="\n${DOWNRIGHT}${DASH} ${ARROWS} ${DEFAULT}"

#PS1="${FIRSTLINE}${SECONDLINE}"

PS1="${YELLOW}\w${LIGHTRED}\$(parse_git_branch) ${LIGHTGREEN}\$${LIGHTGREEN}\$ ${DEFAULT}"

#neofetch
