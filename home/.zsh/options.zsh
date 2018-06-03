HISTFILE=$HOME/.zsh/history
EDITOR=nvim
HISTSIZE=50
SAVEHIST=1024
ZSH_CUSTOM=$HOME/.zsh/custom
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=1
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  root_indicator os_icon
  context dir
  vcs ssh newline
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status background_jobs
  pyenv rbenv
  history time
)
POWERLEVEL9K_BATTERY_STAGES=(
   $'▏    ▏' $'▎    ▏' $'▍    ▏' $'▌    ▏' $'▋    ▏' $'▊    ▏' $'▉    ▏' $'█    ▏'
   $'█▏   ▏' $'█▎   ▏' $'█▍   ▏' $'█▌   ▏' $'█▋   ▏' $'█▊   ▏' $'█▉   ▏' $'██   ▏'
   $'██   ▏' $'██▎  ▏' $'██▍  ▏' $'██▌  ▏' $'██▋  ▏' $'██▊  ▏' $'██▉  ▏' $'███  ▏'
   $'███  ▏' $'███▎ ▏' $'███▍ ▏' $'███▌ ▏' $'███▋ ▏' $'███▊ ▏' $'███▉ ▏' $'████ ▏'
   $'████ ▏' $'████▎▏' $'████▍▏' $'████▌▏' $'████▋▏' $'████▊▏' $'████▉▏' $'█████▏' )

POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND=( 88 94 100 106 70 34 28 22 )
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6

setopt appendhistory beep notify extendedglob
unsetopt autocd
