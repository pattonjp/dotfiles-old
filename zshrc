ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pattonjp"
DISABLE_AUTO_UPDATE="false"
DISABLE_LS_COLORS="false"

plugins=(brew gem mecurial pattonjp node, heroku)

export PATH="/usr/local/bin:$PATH"

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

function railsapp {
  template=$1
  appname=$2
  shift 2
  rails new $appname -m https://raw.github.com/pattonjp/rails-templates/master/$template.rb $@ -T -O
}

function rails_composer {
  rails new $1 -m https://raw.github.com/RailsApps/rails-composer/master/composer.rb -O
}

export PATH=/usr/local/share/npm/bin:$PATH

export MARKPATH=$HOME/.marks
function jump { 
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}
function unmark { 
    rm -i $MARKPATH/$1 
}
function marks {
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
