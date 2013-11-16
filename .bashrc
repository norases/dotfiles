function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}
function proml {
    local        BLUE="\[\033[0;34m\]"
    # OPTIONAL - if you want to use any of these other colors:
    local         RED="\[\033[0;31m\]"
    local   LIGHT_RED="\[\033[1;31m\]"
    local       GREEN="\[\033[0;32m\]"
    local LIGHT_GREEN="\[\033[1;32m\]"
    local       WHITE="\[\033[1;37m\]"
    local  LIGHT_GRAY="\[\033[0;37m\]"
    local      YELLOW="\[\033[0;33m\]"
    local      PURPLE="\[\033[1;34m\]"
    local     MAGENTA="\[\033[0;35m\]"
    local        TEAL="\[\033[0;36m\]"
    local   DARK_GRAY="\[\033[1;30m\]"
    # END OPTIONAL
    local     DEFAULT="\[\033[0m\]"
    PS1="$RED[\$(date +%H:%M:%S)] $GREEN\u$DEFAULT@$PURPLE\h$DEFAULT:$TEAL\w$LIGHT_RED\$(parse_git_branch)$DEFAULT \$ "
}
proml

export PATH=$PATH:~/bin:~/local/usr/bin
export PYTHONPATH=$PYTHONPATH:/Users/sclark/Library/Python/2.7/site-packages:~/src/EPI