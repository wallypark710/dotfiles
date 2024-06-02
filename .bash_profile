export TERM="xterm-color"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxHxegedabagacad

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[93m\]\u\[\e[m\e[36m\]\$(parse_git_branch) \[\e[0;35m\]\w\[\e[m\]$ "

alias vi='vim'

export PATH=/usr/local/bin:$PATH

alias git=hub

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
source ~/.git-completion.bash
