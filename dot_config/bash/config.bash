# This is an abstraction of ~/.bashrc executed/sourced by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc) for examples
#
# To use, put the following in your ~/.bashrc
# source path/to/this/folder/config.bash
#
# For example in my environment:
# source $HOME/.config/bash/config.bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

NASHAT_CONFIG_PATH="$(dirname ${BASH_SOURCE})"
NASHAT_CONFIG_RELATIVE_DIRS="aliases completions functions"

source "$NASHAT_CONFIG_PATH/env.bash"
source "$NASHAT_CONFIG_PATH/prompt.bash"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

for d in $NASHAT_CONFIG_RELATIVE_DIRS
do
    for f in $NASHAT_CONFIG_PATH/$d/*.bash
    do
        source $f
    done
done

