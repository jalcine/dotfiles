export EDITOR=nvim
export HISTFILE=$HOME/.zsh/history
export HISTSIZE=4096
export SAVEHIST=16384
export USE_NERD_FONT=1
export ZSH_CUSTOM=$HOME/.zsh/custom
export ZPLUG_HOME=$HOME/.zsh/zplug
export GIT_EDITOR="nvr -cc split --remote-wait"
export ALIEN_SECTIONS_LEFT=(
  exit
  battery
  user
  path
  newline
  ssh
  venv
  vcs_status:async
  prompt
)

export ALIEN_SECTIONS_RIGHT=(
  vcs_dirty:async
  vcs_branch:async
  time
)
export ALIEN_GIT_STASH_SYM=@
export ALIEN_GIT_SYM=G
export ALIEN_HG_SYM=H
export ALIEN_SVN_SYM=S
export ALIEN_BRANCH_SYM=
export PLIB_GIT_ADD_SYM=+
export PLIB_GIT_DEL_SYM=-
export PLIB_GIT_MOD_SYM=⭑
export PLIB_GIT_NEW_SYM=?
export PLIB_GIT_PUSH_SYM=↑
export PLIB_GIT_PULL_SYM=↓

export ALIEN_CUSTOM_THEME_PATH="$HOME/.zsh/theme.zsh"

setopt appendhistory beep notify extendedglob prompt_subst
unsetopt autocd
