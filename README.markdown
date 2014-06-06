# My Dotfiles

![Snapshot in Yakuake](https://github.com/jalcine/dotfiles/raw/master/snapshot.png)

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

 + **pre-loaded scripts**: `hub`, `composer`, [`vcprompt`][vcprompt],
    `phpctags`, and [`ls++`][lsplusplus]

There's a few chinks in this armor of a shell configuration that's just
Jacky-specific. Information about what and more can be read about on my blog
that I'll write about in the future.

## To Work On

 ✱ Add information about font sources and credit to their respective authors.

 ✱ Add proper licensing information about the files I've written.

 ✱ Work on better cross-platform support (mainly between OS X, Debian, and
   CentOS).

 ✱ Add more dependency checking for binaries, tool chains and the likes.

## Author

I'm [Jacky Alciné][jalcine] and I chat like a firehose (at times).

[homeshick]: https://github.com/andsens/homeshick
[rbenv]: https://github.com/jalcine/rbenv
[bashit]: https://github.com/jalcine/bash-it
[vcprompt]: http://hg.gerg.ca/vcprompt
[jalcine]: http://jalcine.me
[lsplusplus]: http://github.com/trapd00r/ls--
