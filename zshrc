#!/usr/bin/env zsh

setopt always_to_end
setopt append_history
setopt auto_menu
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt interactivecomments
setopt prompt_subst
setopt share_history

bindkey -v

bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

git_prompt() {
    BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/\1/')

    if [ ! -z $BRANCH ]; then
        echo -n "%F{yellow}$BRANCH"

        if [ ! -z "$(git status --short)" ]; then
            echo " %F{red}✗"
        fi
    fi
}

PS1='
$(git_prompt)
%F{244}%# %F{reset}'

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH=/Applications/Firefox.app/Contents/MacOS:$HOME/bin:/usr/local/bin:$PATH
