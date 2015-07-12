ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pattonjp"
DISABLE_AUTO_UPDATE="false"
DISABLE_LS_COLORS="false"
export PATH="$HOME/bin:/usr/local/bin:$PATH"

plugins=(brew gem docker pattonjp node heroku zsh_reload jump boot2docker porter)


source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias gitk='gitk 2>/dev/null'

CORRECT_IGNORE=”subl”
CORRECT_IGNORE=”hk”
export ANDROID_HOME=/usr/local/opt/android-sdk
export BUNDLER_EDITOR='subl'
export EDITOR='subl -w'
export EC2_HOME=~/.ec2

alias tailf='tail -f'


export PATH=/usr/local/share/npm/bin:$PATH


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


eval "$(direnv hook zsh)"
