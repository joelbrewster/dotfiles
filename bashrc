#
# ~/.bashrc
#

#
# LANGUAGE
#

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8


#
# SHELL
#


# Append instead of overwrite history.
shopt -s histappend
# Properly save multi-line commands.
shopt -s cmdhist
# Don't replace newlines with semicolons in history.
shopt -s lithist
# Fix typos when changing directories.
shopt -s cdspell


#
# HISTORY
#

# Write more history.
export HISTFILESIZE=2000
# Remember more history.
export HISTSIZE=2000


#
# ALIASES
#

alias reload="exec $SHELL -l"
alias s="osascript ~/dotfiles/Scripts/themechanger.scpt"

alias reboot="sudo reboot"
alias shutdown="sudo poweroff"

alias eh="open vnc://192.168.0.12"
alias ip="curl http://ipecho.net/plain; echo"
alias ips="ifconfig | grep inet"

alias clean="find . -name '*.DS_Store' -type f -ls -delete"
alias empty="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"
alias hidden="sh ~/dotfiles/Scripts/togglehidden"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false ; killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true ; killall Finder"

alias update="sudo softwareupdate -i -a ; brew update ; brew upgrade ; brew upgrade brew-cask ; brew cleanup ; brew cask cleanup"

alias ls="ls -G"
alias ll="ls -otW"
alias la="ls -a"
alias l="clear"
alias ..='cd ..'
alias ...='cd ../..'

alias gg="cd ~"
alias gdf="cd ~/dotfiles"
alias gap="cd ~/Applications/"
alias gbu="cd /Volumes/External/"
alias gdb="cd /Volumes/External/Dropbox/"
alias gdc="cd /Volumes/External/Dropbox/Documents/"
alias gdl="cd ~/Downloads/"
alias gdt="cd ~/Desktop/"
alias gdv="cd /Volumes/External/Dropbox/Developer/"
alias gms="cd /Volumes/External/Dropbox/Music/"
alias gmv="cd /Volumes/External/Dropbox/Movies/"
alias gpt="cd /Volumes/External/Dropbox/Photos/"


alias v='mvim -v'
alias n="nvim"
alias mt="mutt"
alias nb="newsbeuter"
alias rg="ranger"
alias ir="irssi"
alias cm="cmus"
alias hu="hangups"
alias lr="livestreamer"
alias yt="youtube-dl"
alias mp3="youtube-dl -t --extract-audio --audio-format mp3 --audio-quality 320k"
alias gif="convert -delay 35 -loop 0 source*.png animated.gif"
alias html="pandoc input.md -o output.html"

alias commit='git commit -am '
alias push='git push origin master'
alias status='git status'
alias add='git add'
alias js="/System/Library/Frameworks/JavaScriptCore.framework/Resources/jsc"

alias info="sh     ~/dotfiles/Scripts/info.sh"
alias blocks="sh   ~/dotfiles/Scripts/blocks"
alias pipes="sh    ~/dotfiles/Scripts/pipes"
alias invaders="sh ~/dotfiles/Scripts/invaders"

alias leon="v /Volumes/External/Dropbox/Documents/Leon/Letters\ to\ Leon.txt"
alias to="v /Volumes/External/Dropbox/todo.txt"
alias ca="v /Volumes/External/Dropbox/calendar.txt"

alias a="mplayer http://50.7.96.138:8115/listen/pls"
alias dcss="ssh joshua@crawl.akrasiac.org"



#
# HELPERS
#

# Make a directory and change to it.
function mkcd {
  mkdir -p "$1" && cd "$1"
}

function play {
  youtube-dl --default-search=ytsearch: \
             --youtube-skip-dash-manifest \
             --output="${TMPDIR:-/tmp/}%(title)s-%(id)s.%(ext)s" \
             --restrict-filenames \
             --format="bestaudio[ext!=webm]" \
             --exec=mplayer -vvv "$*"
}

# What is love?
alias whatislove?="play haddaway what is love"


#
# PREFERENCES
#

export EDITOR=vim
export PS1="\[\e[34m\]\w\[\e[m\] \[\e[32m\]>\[\e[m\] """


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

