# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi


#Added by Ashley to execute on ssh login
if [[ -n $SSH_CONNECTION ]] ; then
    echo "--------------------------------------------------------------------Welcome------------------------------------------------------------------------"
    echo Server uptime
    uptime
    echo "---------------------------------------------------------------------------------------------------------------------------------------------------"
    echo "Centos Version"
    rpm --query centos-release
    echo "---------------------------------------------------------------------------------------------------------------------------------------------------"
fi
