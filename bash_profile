export PATH="/usr/local/bin:$PATH"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

# Set up a Git-aware prompt
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
RESET="\033[m"
ITALIC="\e[3m"

function parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1)/"
}

export PS1="\[$GREEN\]\u \[$RESET\]\[$ITALIC\]in \[$RESET\]\[$BLUE\]\w\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" \[$RESET\]\[$ITALIC\]on \")\[$YELLOW\]\$(parse_git_branch)\[$RESET\]\n» "

# Git Autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Git Aliases
alias g="git"
alias gb="git branch"
alias gco="git checkout"
alias gcom="git checkout master"
alias gs="git status"
alias gss="git status -s"
