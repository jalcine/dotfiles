#!/usr/bin/env bash
# Some environment variables I'd use a lot.

# Make vim our default console editor.
export EDITOR=vim

# We want to see as much as possible, not less.
[ -e most ] && export PAGER=most && export GIT_PAGER=$PAGER

# Include my local path into the CMake module discovery.
export CMAKE_PREFIX_PATH="$HOME/.local:$CMAKE_PREFIX_PATH"

# Default the installation to my local installation.
export CMAKE_INSTALL_PREFIX="$HOME/.local"

# Make sure you get my good side (of CMake modules).
export CMAKE_MODULE_PATH="$HOME/.local/share/apps/cmake/Modules:$HOME/.local/share/cmake-2.8/Modules:$CMAKE_MODULE_PATH"

# Default the build type to be debugged.
export CMAKE_BUILD_TYPE="Debug"

# Include the use of local libraries.
[ -d "$HOME/.local/lib" ] && export LIBRARY_PATH="$HOME/.local/lib:$LIBRARY_PATH"

# Since I <3 KDE, we'd use KDE to manage my keychain.
if [ -d "$HOME/.kde" ]; then
  export SSH_ASKPASS=ksshaskpass
  export KDEDIRS="$HOME/.kde:$HOME/.local:$KDEDIRS"
fi

# When using `pkgconfig`, include my built versions.
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$HOME/.local/lib/pkgconfig"

# Include my library's built out.
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/.local/lib"

# Let the system know of the keys I use in the shell.
export KEYCHAIN_SSH_KEYS=$(find $HOME/.ssh/keys -type f -name '*.rsa')

# Only do this when I'm home.
if [ "$(hostname)" = "neuromancer" ]; then
  export KEYCHAIN_GPG_KEYS="6E767393"
fi

# Because we have a lot of RAM (and swap); we're going to choke our RAM making
# rubby move faster.
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_GC_HEAP_FREE_SLOTS=500000
export RUBY_GC_HEAP_INIT=40000000

# Add ls++
if [ -e $HOME/.perl5/bin/ls++ ]; then
  export PATH="$HOME/.perl5/bin:$PATH"
fi

# Add custom manpath.
export MANPATH="$MANPATH:$HOME/.local/man"

# Source variables for vcprompt.
source $HOME/.bash/variables.vcprompt.sh

# Extra variables to use? We gotcha.
[ -e $HOME/.variables.local.sh ] && . $HOME/.variables.local.sh
