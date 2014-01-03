# @ohataken's emacs.d
re-created at 4 Jan 2014.

# installation

    $ cd ~
    $ git clone https://github.com/kenohata/emacs.d.git .emacs.d/

paste them into your .bashrc or .zshrc

    export ALTERNATE_EDITOR=""
    export GIT_EDITOR=emacsclient
    export EDITOR=emacsclient
    export VISUAL=emacsclient
    alias em=emacsclient
    alias kill-emacs="em -e \"(kill-emacs)\""
