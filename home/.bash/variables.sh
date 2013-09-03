#!/usr/bin/env bash
# Some environment variables I'd use a lot.

# Make vim our default console editor.
export EDITOR=vim

# We want to see as much as possible, not less.
export PAGER=most

# Include my local path into the CMake module discovery.
export CMAKE_PREFIX_PATH="$HOME/.local:$CMAKE_PREFIX_PATH"

# Default the installation to my local installation.
export CMAKE_INSTALL_PREFIX="$HOME/.local"

# Make sure you get my good side (of CMake modules).
export CMAKE_MODULE_PATH="$HOME/.local/share/apps/cmake/Modules:$HOME/.local/share/cmake-2.8/Modules:$CMAKE_MODULE_PATH"

# Default the build type to be debugged.
export CMAKE_BUILD_TYPE="Debug"

# Include the use of local libraries.
export LIBRARY_PATH="$HOME/.local/lib:$LIBRARY_PATH"

# Since I <3 KDE, we'd use KDE to manage my keychain.
if [ -d "$HOME/.kde" ]; 
  export SSH_ASKPASS=ksshaskpass
  export KDEDIRS="$HOME/.local:$KDEDIRS"
fi

# When using `pkgconfig`, include my built versions.
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$HOME/.local/lib/pkgconfig"

# Include my library's built out.
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/.local/lib"
