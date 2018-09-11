# vi: set ft=gdb:
# TODO: Clean this up.
set confirm off
set verbose off
set logging off
set pagination on
set print pretty on
set print array on
set print array-indexes on
set print elements 3
set print repeats 1
set print null-stop on
set print symbol-filename on
set print object on
set print vtbl on
set print demangle on
set print asm-demangle on
set print address off
set overload-resolution on

set auto-load python-scripts on
set auto-load safe-path ~/src

source ~/.gdb/aliases.gdb
source ~/.gdb/c++.gdb

add-auto-load-safe-path /usr/share/gdb/auto-load
