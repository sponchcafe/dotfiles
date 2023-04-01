alias l='exa'
alias la='exa -la'
alias ll='exa -l'
alias lg='exa -l --git'
alias tree='exa --tree'

alias grep='rg'
alias cat='bat'
alias find='fd'

alias gst='git status'
alias glol='git log --oneline'
alias glst='git log HEAD~1..HEAD'
alias glhd='git log --oneline HEAD~10..HEAD'
alias grbi='git rebase -i'
alias gfix='git commit --amend --no-edit'

alias vi='nvim'
alias vim='nvim'

set fish_greeting

function fish_prompt
    powerline shell left
end

fish_add_path ~/.cargo/bin
