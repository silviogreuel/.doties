export ZSH=$HOME/.oh-my-zsh

#----------Themes-----------
ZSH_THEME="theunraveler"


#----------Plugins----------
plugins=(git)


#-------Configuration-------
export PATH=$HOME/bin:/usr/local/bin:$PATH:/home/silvio/.kre/packages/KRE-Mono.1.0.0-beta2/bin:/home/silvio/.nvm/v0.10.36/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

LANG=en_US.UTF-8


#----------Sources----------
source $ZSH/oh-my-zsh.sh
source ~/.nvm/nvm.sh


#-------Env-Variables-------
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

export BROWSER='firefox'
export MANPATH=/home/silvio/.nvm/v0.10.36/share/man:/usr/local/man:/usr/local/share/man:/usr/share/man
export ANDROID_HOME=/opt/android-sdk


#----------Aliases----------
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'
alias vimrc="vim ~/.vimrc"
