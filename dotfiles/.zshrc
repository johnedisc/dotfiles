set -o vi

PS1="k_bola? %t %1~ %# "

# homebrew autocomplete
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# make important directories part of my path
CDPATH=~/code:~/code/nombolo:~/


. /opt/homebrew/opt/asdf/libexec/asdf.sh

export ANDROID_SDK=/Users/johnedisc/Library/Android/sdk
export PATH=/Users/johnedisc/Library/Android/sdk/platform-tools:$PATH

export NVM_DIR="$HOME/.nvm"
    [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion


export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias java-18=”export JAVA_HOME=`/usr/libexec/java_home -v 18`; java -version”
alias java-20=”export JAVA_HOME=`/usr/libexec/java_home -v 20`; java -version”
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
