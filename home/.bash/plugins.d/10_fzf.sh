# =========================================================================== #
# File: ~/.bash/plugins.d/10_fzf.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Commands using `fzf`.
# =========================================================================== #

git-fzf-show() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

[ -d ~/.fzf ] && . ~/.fzf.bash
