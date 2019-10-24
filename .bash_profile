export TERM="xterm-color"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxHxegedabagacad

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[93m\]\h\[\e[m\e[36m\]\$(parse_git_branch) \[\e[0;35m\]\w\[\e[m\]$ "

alias vi='vim'

#alias sublime="open -a /Applications/Sublime\ Text.app"
alias sublime='function _new(){ touch $1; open -a /Applications/Sublime\ Text.app $1; }; _new'
alias typo='function _new(){ touch $1; open -a /Applications/Typora.app $1; }; _new'
export PATH=/usr/local/bin:$PATH

alias git=hub

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
source ~/.git-completion.bash









