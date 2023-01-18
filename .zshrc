[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# pnpm
export PNPM_HOME="/Users/matthewgarnes/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

# Git aliases
alias gs='git status'
alias gc='git commit'
alias ga='git add -u'
alias gd='git diff'
alias gl='git log'

# Grep aliases
alias gri='grep -ri $0'
alias gr='grep -r $0'

# Find aliases
alias f='find -name $0'
