alias reload="exec $SHELL -l"
alias tomorrow="osascript ~/.vim/plugged/Tomorrow/ThemeChanger.scpt"
alias solarized="osascript /Volumes/External/Dropbox/Developer/HelperApplications/Solarized.scpt"
alias gruvbox="osascript /Volumes/External/Dropbox/Developer/HelperApplications/Gruvbox.scpt"
alias seoul="osascript /Volumes/External/Dropbox/Developer/HelperApplications/Seoul256.scpt"

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
alias tk="trans :ko "
alias te="trans :en "

alias update="sudo softwareupdate -i -a ; brew update ; brew upgrade ; brew upgrade brew-cask ; brew cleanup ; brew cask cleanup"

alias ls="ls -G"
alias ll="ls -otW"
alias asl="ls -aslFh"
alias la="ls -a"
alias lh="ls -lh"
alias cl="clear"
alias ..='cd ..'
alias ...='cd ../..'

alias gg="cd ~"
alias gh="cd ~"
alias gdt="cd ~/dotfiles"
alias gap="cd ~/Applications/"
alias gex="cd /Volumes/External/"
alias gdr="cd /Volumes/External/Dropbox/"
alias gdc="cd /Volumes/External/Dropbox/Documents/"
alias gdw="cd ~/Downloads/"
alias gds="cd ~/Desktop/"
alias gpc="cd /Volumes/External/Dropbox/Pictures/"
alias gdv="cd /Volumes/External/Dropbox/Developer/"
alias gms="cd /Volumes/External/Dropbox/Music/"
alias gmv="cd /Volumes/External/Dropbox/Movies/"
alias gph="cd /Volumes/External/Dropbox/Photos/"
alias gcu="cd /Volumes/External/Dropbox/Camera\ Uploads/"
alias gga="cd /Volumes/External/Dropbox/Developer/GeneralAssembly/"
alias gbr="cd /Volumes/External/Dropbox/Developer/br0c0d3/ && ls"
alias gwr="cd /Volumes/External/Dropbox/Developer/WDI7-Warmups && ls"

alias v='vim'
alias n="nvim"
alias mt="mutt"
alias cm="cmus"
alias mp="mplayer"
alias ddg="elinks www.duckduckgo.com"
alias hn="elinks https://news.ycombinator.com"
alias yt="youtube-dl"
alias mp3="youtube-dl -t --extract-audio --audio-format mp3 --audio-quality 320k"
alias gifpng="convert -delay 35 -loop 0 source*.png animated.gif"
alias gifjpg="convert -delay 35 -loop 0 source*.jpg animated.gif"
alias html="pandoc input.md -o output.html"
alias pdf="pdftotext"
alias pv="open -a Preview"
alias ql="qlmanage -p 2>/dev/null"
alias notes="vim ~/Documents/notes.md"

alias commit='git commit -am '
alias push='git push origin master'
alias status='git status'
alias add='git add'
alias clone="git clone"
alias js="/System/Library/Frameworks/JavaScriptCore.framework/Resources/jsc"
alias tm="tmux"
alias ta="tmux attach"
alias pm="pymux"
alias pa="pymux attach"
alias ts="sh ~/dotfiles/Scripts/tmux.sh"

alias info="sh ~/dotfiles/Scripts/info.sh"
alias blocks="sh ~/dotfiles/Scripts/blocks"
alias pipes="sh ~/dotfiles/Scripts/pipes"
alias invaders="sh ~/dotfiles/Scripts/invaders"
alias poke="sh ~/dotfiles/Scripts/poke"

alias weather="curl http://wttr.in/Melbourne"
alias dcss="ssh joshua@crawl.akrasiac.org"

alias leon="v /Volumes/External/Dropbox/Documents/Leon/LettersToLeon.md"

alias a="mplayer http://50.7.96.138:8115/listen/pls"


#
# HELPERS
#

# Make a directory and change to it.
function mkcd {
  mkdir -p "$1" && cd "$1"
}

# Requres youtube-dl and mplayer
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

