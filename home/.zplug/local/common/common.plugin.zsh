alias mk='make'
alias _='sudo'
alias irc='WEECHAT_PASSPHRASE=$(pass Applications/Weechat) weechat'
alias ..='cd ..'
alias ...='cd ../..'
alias make-ssh-key='ssh-keygen -o -a 100 -t ed25519'
alias httpserve='python -m SimpleHTTPServer'

export PATH=$HOME/.local/bin:$PATH

mkcd () {
  mkdir -p "${1}";
  cd "${1}";
}
