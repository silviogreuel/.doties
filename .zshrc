export ZSH=$HOME/.oh-my-zsh


#----------Themes-----------
ZSH_THEME="muse"


#----------Plugins----------
plugins=(ssh-agent fzf git terraform golang tmux docker docker-compose aws zsh-autosuggestions zsh-syntax-highlighting history-substring-search github ruby rake gem rails kops kubectl helm)


#----------Config-----------
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=black'


#-------Configuration-------
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/silvio/.composer/vendor/bin
export LESSCHARSET="utf-8"
export LOCALE="en_US.utf8"
export LANG=en_US.utf8
export CC="gcc"
export CXX="g++"
export LC="en_US.utf8"
export LC_CTYPE="en_US.utf8"
export LC_NUMERIC="en_US.utf8"
export LC_TIME="en_US.utf8"
export LC_COLLATE="en_US.utf8"
export LC_MONETARY="en_US.utf8"
export LC_MESSAGES="en_US.utf8"
export LC_PAPER="en_US.utf8"
export LC_NAME="en_US.utf8"
export LC_ADDRESS="en_US.utf8"
export LC_TELEPHONE="en_US.utf8"
export LC_MEASUREMENT="en_US.utf8"
export LC_IDENTIFICATION="en_US.utf8"
export LC_ALL="en_US.utf8"
export TERMINAL=kitty
export TERM=kitty
export NVM_DIR=~/.nvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#----------Sources----------
source $ZSH/oh-my-zsh.sh
source /usr/share/nvm/init-nvm.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh

eval "$(rbenv init -)"

#-------Env-Variables-------
export BROWSER='google-chrome-stable'
export MANPATH=/usr/local/man:/usr/local/share/man:/usr/share/man
export ANDROID_HOME=/opt/android-sdk
export GOPATH=~/go
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/.protoc/bin
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'


#----------Aliases----------
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'
alias vimrc="vim ~/.vimrc"
alias mkcd="mkdir \!^; cd \!^1"

