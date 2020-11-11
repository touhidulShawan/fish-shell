#-----------------------------
#______ _____  _____ _    _
# |  ____|_   _|/ ____| |  | |
# | |__    | | | (___ | |__| |
# |  __|   | |  \___ \|  __  |
# | |     _| |_ ____) | |  | |
# |_|    |_____|_____/|_|  |_|
# -----------------------------

set -x EDITOR nvim

# load starship prompt
starship init fish | source

#mkdir $ cd that dir

function mkdir-cd
    mkdir $argv && cd $argv
end


# alias for nvim
alias vim='nvim'

# alias for ranger
alias r='ranger'

# alias for wifi on/OFF
alias start_wifi='nmcli radio wifi on'
alias stop_wifi='nmcli radio wifi off'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../..'
alias .5='cd ../../../..'
alias .6='cd ../../../../..'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# alias for my lsd command replace for ls

 alias ls='lsd -hA --group-dirs first'
 alias l='ls -l'
 alias la='ls -a'
 alias lla='ls -la'
 alias lt='ls --tree'

# alias for git
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias state='git status'
alias tag='git tag'
alias newtag='git tag -a'
alias addremote='git remote add origin'
alias clone='git clone'

# alias for exit
alias e='exit'

#alias for clear
alias c='clear'

#alias for copy
alias cp='cp -r -g'

# alias for my create-rect-app

alias react='npx create-react-app --template typescript'
alias react-app='create-react-app'


# alias to  install package of stylelint and stylelint-config-standard

alias stylelint='npm install --save-dev stylelint stylelint-config-standard'

# alias for rm

alias remove='sudo rm -r'

# alias for reboot and shutdown
alias reboot='sudo reboot'
alias shutdown='sudo shutdown'

# alias for advanced copy and move
#alias cp='advcp -g'
#alias mv='advmv -g'
#alias cp='rsync --info=progress2 '

# alias pacman and yay

# alias for update package
alias update='sudo pacman -Syyu'
# alias to install pacman packages
alias install='sudo pacman -S'
# alias search package
alias search='sudo pacman -Ss'
# alias to uninstall packages
alias uninstall='sudo pacman -Rns'
alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs
alias yaysyu="yay -Syu --noconfirm"              # update standard pkgs and AUR pkgs
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
# alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages

#alias to kill vlc
alias kill-vlc='killall -9 vlc'
# update mirrorlist using reflector
alias mirror='sudo reflector --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
