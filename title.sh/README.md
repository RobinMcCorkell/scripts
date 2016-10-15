title.sh
========

Set your terminal or tmux window title with something more useful than the
command you are running. Takes the first non-option argument of the command
as the desired title.

Installation
------------

Copy `title.sh` to somewhere in your PATH.

Create a symlink for each command you want to run via `title.sh` in the format
`[cmd].title` -> `title.sh`, and then alias `[cmd]` to `[cmd].title` in your
shell. This prevents circular loops, and also means the `title.sh` wrapper is
only invoked through interactive usage, not in scripts.

`ssh.title` serves as a good example of the usage. `ssh.title` is symlinked to
`title.sh`, and so running for example `ssh.title --someoptions myhost.domain`
(or via an alias, `alias ssh=ssh.title`), the window title will become
`myhost.domain` instead of `ssh`. Super useful for multiple SSH sessions!
