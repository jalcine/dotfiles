if [ ! -x anyenv ]; then
  export PATH="$HOME/.anyenv/bin:$PATH"
fi

eval "$(anyenv init -)"
