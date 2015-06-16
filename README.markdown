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

Just for my convenience (and maybe yours), you can install my full dotfiles
setup with the following:

`curl http://raw.githubusercontent.com/jalcine/dotfiles/develop/home/.local/bin/jalcine-rc | bash -c`

## Author

I'm [Jacky Alciné][jalcine] and I chat like a firehose (at times).

[homeshick]: https://github.com/andsens/homeshick
[rbenv]: https://github.com/jalcine/rbenv
[bashit]: https://github.com/jalcine/bash-it
[vcprompt]: http://hg.gerg.ca/vcprompt
[jalcine]: https://jacky.wtf/
[lsplusplus]: http://github.com/trapd00r/ls--
