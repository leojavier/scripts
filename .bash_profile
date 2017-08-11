#Format:
#user@directory: ➥ (GitBranch)

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

cyan=$(tput setaf 6)
purple=$(tput setaf 5)
bold=$(tput bold)
reset=$(tput sgr0)
export PS1='\[$cyan\]\u\[$cyan\]\[\033[38;5;254m\]@\W: \[\033[38;5;254m\]➥\[\033[38;5;202m$bold\]$(parse_git_branch) \[$purple$bold\]\$\[$reset\] '
