export ZSH=$HOME/.oh-my-zsh

#----------Themes-----------
ZSH_THEME="kolo"


#----------Plugins----------
plugins=(git)


#-------Configuration-------
export PATH=$HOME/bin:/usr/local/bin:$PATH:/home/silvio/.kre/packages/KRE-Mono.1.0.0-beta2/bin:/home/silvio/.nvm/v0.10.36/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/silvio/.composer/vendor/bin
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

#----------Sources----------
source $ZSH/oh-my-zsh.sh
source /usr/share/nvm/init-nvm.sh


#-------Env-Variables-------
export BROWSER='firefox'
export MANPATH=/home/silvio/.nvm/v0.10.36/share/man:/usr/local/man:/usr/local/share/man:/usr/share/man
export ANDROID_HOME=/opt/android-sdk
export GOPATH=~/go
export PATH=$PATH:~/go/bin

#----------Aliases----------
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'
alias vimrc="vim ~/.vimrc"
alias mkcd="mkdir \!^; cd \!^1"
alias spcomp="/home/silvio/.local/share/Steam/steamapps/common/Counter-Strike\ Global\ Offensive/csgo/addons/sourcemod/scripting/spcomp"
