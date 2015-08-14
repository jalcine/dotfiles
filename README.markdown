# My Dotfiles

![Snapshot in Yakuake](./snapshot.png)

## Story

Here lies my local shell files that typically lie under my `$HOME` directory.
I really only work on Linux machines, specifically Ubuntu and Debian machines
so your mileage *will* vary. This is designed to be installed using
[homeshick][]. This repository incorporates the following:

 + **configuration options** for `awesome_print`, `astyle`, `gem`, `git`,
   `guard`, `gdb`, `libreadline`, `irb`, `pry`, `ruby-debug`, `tmux`,
   `weechat`, `rainbarf` and a few others. There's a fairly extensive
   collection of patched fonts I use as well as some freely available fonts.

 + **plug-ins**: a forked [`rbenv`][rbenv] with `rbenv-communal-gems`,
   `rbenv-ctags`, `rbenv-default-gems`, `rbenv-each`, `rbenv-gem-rehash`,
   `rbenv-vars`, `rbenv-whatis` and `ruby-build`; `git-hooks`;
   [`bash-it`][bashit]

 + **pre-loaded scripts**: `hub` and [`vcprompt`][vcprompt],

## To Work On

 ✱ Add information about font sources and credit to their respective authors.

 ✱ Add proper licensing information about the files I've written.

 ✱ Add more dependency checking for binaries, tool chains and the likes.

 ✱ Allow this repository to install the jazz for vim and tmux.

## Quick Install

I don't recommend using a one-liner to download random scripts to your machine.
I care about your machine's integrity. Instead, you can safely check out
[homesick][] and then clone this repository into your system.

## Author

I'm [Jacky Alciné][jalcine] and I chat like a firehose (at times).

[bashit]: https://github.com/jalcine/bash-it
[homesick]: https://github.com/technicalpickles/homesick
[jalcine]: https://jacky.wtf/
[lsplusplus]: http://github.com/trapd00r/ls--
[rbenv]: https://github.com/jalcine/rbenv
[vcprompt]: http://hg.gerg.ca/vcprompt
