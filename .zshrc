export ZSH=/Users/mattarnold/.oh-my-zsh
ZSH_THEME="gnzh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.rvm/bin"

alias v6site='newman run ~/code/postman/v6.json -e ~/code/postman/env.json --export-environment ~/code/postman/env.json -k'
alias v7site='newman run ~/code/postman/v7.json -e ~/code/postman/env.json --export-environment ~/code/postman/env.json -k'
alias v8site='newman run ~/code/postman/v8.json -e ~/code/postman/env.json --export-environment ~/code/postman/env.json -k'
alias v8rsite='newman run ~/code/postman/v8r.json -e ~/code/postman/env.json --export-environment ~/code/postman/env.json -k'

alias lss='ls -la | grep "^d" && ls -la | grep "^-" && ls -la | grep "^l"'

alias vim="/usr/local/Cellar/vim/8.0.1171/bin/./vim"

alias webpackrestart='open ~/code/utilityScripts/dev_environment/webpack/restartNode.command'
alias vagrantresume='open ~/code/utilityScripts/dev_environment/vagrant/vagrantResume.command'
alias vagrantsuspend='open ~/code/utilityScripts/dev_environment/vagrant/vagrantSuspend.command'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completionso
