#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


#archman aliases
alias pac="sudo pacman -S"
alias pacs="sudo pacman -Ss"
alias pacu="sudo pacman -Syy"
alias update="sudo pacman-mirrors --fasttrack && sudo pacman -Syyu && yay -Syu --devel --timeupdate"
alias mirrors="sudo reflector --verbose --latest 15 --sort rate --save /etc/pacman.d/mirrorlist"
alias upgrade="sudo reflector --verbose --latest 15 --sort rate --save /etc/pacman.d/mirrorlist"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias clean="sudo pacman -Scc && yay -Yc"
alias remove="sudo pacman -R"
alias info="pacman -Qi"
alias aur="yay -S"
alias homestead='function __homestead() { ( cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'
