#!/usr/bin/bash
#

# Add my personal local path into the system.
PATH="~/.local/bin:$PATH"


# Add Android's tools to the path.
ANDROID_SDK_PATH="$HOME/Development/References/Resources/SDKs/Android"
PATH="$ANDROID_SDK_PATH/platform-tools:$PATH"
PATH="$ANDROID_SDK_PATH/tools:$PATH"
