#!/bin/bash

#alias emacs="autoe"
alias emacs="emacs -nw"

alias makec="make clean && make"

if [[ `uname` == 'Darwin' ]]; then
    alias make="make -j$(sysctl -n hw.ncpu)"
else
    alias make="make -j$(nproc)"
fi

alias gita="git add . && git ci -m 'u' && git push"
alias gitp="git pull"
alias svna="svn st | grep '\?' | xargs svn add; svn ci -m 'u'"
alias svnp="svn up"

alias greph="find . -name '*.h' | xargs grep -n "
alias grepcpp="find . -name '*.cpp' | xargs grep -n "
alias grepcc="find . -name '*.cc' | xargs grep -n "
alias grepc="find . -name '*.c' | xargs grep -n "
alias greppy="find . -name '*.py' | xargs grep -n "
alias greperl="find . -name '*.erl' | xargs grep -n "
alias grephrl="find . -name '*.hrl' | xargs grep -n "
alias grepjava="find . -name '*.java' | xargs grep -n "
alias grepproto="find . -name '*.proto' | xargs grep -n "
alias grepel="find . -name '*.el' | xargs grep -n "
alias grepgo="find . -name '*.go' | xargs grep -n "

alias f="find . -name "

if [[ `uname` == 'Darwin' ]]; then
    alias lstree="ls -R | grep \":$\" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
else
    alias lstree="ls -R | grep ":" | sed -e 's/://' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
fi

if [[ `uname` == 'Darwin' ]]; then
    alias ls="ls -lh -G"
else
    alias ls="ls -lh --color"
fi

alias hadoop="hadoop --config /etc/hadoop/conf "
