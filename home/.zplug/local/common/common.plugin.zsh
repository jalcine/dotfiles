alias mk='make'
alias _='sudo'
alias irc='WEECHAT_PASSPHRASE=$(pass Applications/Weechat) weechat'
alias ..='cd ..'
alias ...='cd ../..'

export PATH=$HOME/.local/bin:$PATH

mkcd () {
  mkdir -p "${1}";
  cd "${1}";
}
