# user-defined aliases
alias rm='rm -vi'
alias cp='cp -vi'
alias mv='mv -vi'
alias clean='rm -f "#"* "."*~ *~ *.bak *.dvi *.aux *.log'
alias svim='sudo vim'

last_five_branches () {
    git reflog | egrep -io 'moving from ([^[:space:]]+)' | awk '{ print $3 }' | awk ' !x[$0]++' | egrep -v '^[a-f0-9]{40}$' | head -n5
}

alias brl='last_five_branches'

# Prevent history duplication
export HISTCONTROL=ignoredups

export HISTSIZE=10000
export HISTFILESIZE=10000

# cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# cd into the old directory
alias bd='cd "$OLDPWD"'

# alias use firefox debugging
alias ffdb='/Applications/Firefox.app/Contents/MacOS/firefox -start-debugger-server'

