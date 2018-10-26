export ZSH=$HOME/.oh-my-zsh

#----------Themes-----------
ZSH_THEME="kolo"


#----------Plugins----------
plugins=(git terraform go golang tmux docker docker-compose aws)


#-------Configuration-------
export PATH=$HOME/bin:/usr/local/bin:$PATH:/home/silvio/.kre/packages/KRE-Mono.1.0.0-beta2/bin:/home/silvio/.nvm/v0.10.36/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/silvio/.composer/vendor/bin
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
export TERMINAL="konsole"

#----------Sources----------
source $ZSH/oh-my-zsh.sh
source /usr/share/nvm/init-nvm.sh


#-------Env-Variables-------
export BROWSER='firefox'
export MANPATH=/home/silvio/.nvm/v0.10.36/share/man:/usr/local/man:/usr/local/share/man:/usr/share/man
export ANDROID_HOME=/opt/android-sdk
export GOPATH=~/go
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/.protoc/bin

#----------Aliases----------
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'
alias vimrc="vim ~/.vimrc"
alias mkcd="mkdir \!^; cd \!^1"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
