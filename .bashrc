# .bashrc aliases for pacman (assumes --color auto in pacman.conf) and aurutils (repo=custom)

alias pacu='/usr/bin/sudo /usr/bin/pacman -Syu'
alias pacs='/usr/bin/sudo /usr/bin/pacman -Ss $1'
alias pacq='/usr/bin/sudo /usr/bin/pacman -Ql $1'
alias paci='/usr/bin/sudo /usr/bin/pacman -Syu $1'
alias pacr='/usr/bin/sudo /usr/bin/pacman -Rns $1'

alias sc='/usr/bin/sudo /usr/bin/systemctl "$1" "$2"'
alias jc='/usr/bin/sudo /usr/bin/journalctl -f -b -u "$1"'

alias aurr='/usr/bin/find ~/.cache/aurutils/sync/ -type d -name .git -execdir /usr/bin/git clean -xi \;'
alias aurc='/usr/bin/aur repo -d custom --list | /usr/bin/aur vercmp && /usr/bin/pacman -Qm | /usr/bin/aur vercmp'
alias auru='/usr/bin/grep -Fxf <(/usr/bin/pacman -Qq) <(/usr/bin/pacman -Slq custom) > ~/installed.txt && /usr/bin/xargs -a ~/installed.txt /usr/bin/aur sync repo -d custom'
