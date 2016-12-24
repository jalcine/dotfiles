#!/usr/bin/env bash
# =========================================================================== #
# File: ~/.bash/plugins/power.sh
# Author: Jacky Alcine <yo@jacky.wtf>
# Description: Helper methods for tasks I invoke often.
# =========================================================================== #

function kill_rf {
  systemctl stop bluetooth
  systemctl stop network-manager
}

function start_rf {
  systemctl start bluetooth
  systemctl start network-manager
}
