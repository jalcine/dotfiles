if [ -d "$HOME/.anyenv" ]; then
  echo_msg "[anyenv] Already installed."
else
  git clone --quiet --recursive --depth=1 https://github.com/riywo/anyenv "$HOME/.anyenv"
fi

if [ ! -x anyenv ]; then
  export PATH="$HOME/.anyenv/bin:$PATH"
fi

echo "[anyenv] loading version managers..."
eval "$(anyenv init -)"
echo "[anyenv] loaded."
