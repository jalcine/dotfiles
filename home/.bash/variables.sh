#!/usr/bin/env bash
# Some environment variables I'd use a lot.

# Enable the use of ccache.
export USE_CCACHE=1

# Make vim our default console editor.
export EDITOR=vim

# We want to see as much as possible, not less.
export PAGER=most

# Since I <3 KDE, we'd use KDE to manage my keychain.
export SSH_ASKPASS=ksshaskpass

# Include my local path into the CMake module discovery.
export CMAKE_PREFIX_PATH="$HOME/.local:$CMAKE_PREFIX_PATH"

# Default the installation to my local installation.
export CMAKE_INSTALL_PREFIX="$HOME/.local"

# Default the build type to be debugged.
export CMAKE_BUILD_TYPE="Debug"

export LIBRARY_PATH="$HOME/.local/lib:$LIBRARY_PATH"

# When searching for awesome KDE stuff, include my built versions.
export KDEDIRS="$HOME/.local:$KDEDIRS"

# When using `pkgconfig`, include my built versions.
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$HOME/.local/lib/pkgconfig"

# Include my library's built out.
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/.local/lib"
