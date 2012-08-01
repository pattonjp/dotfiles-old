ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pattonjp"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(bundler brew gem mecurial pattonjp node, heroku)

export PATH="/usr/local/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

CORRECT_IGNORE=”subl” 

export BUNDLER_EDITOR='subl'

function railsapp {
  template=$1
  appname=$2
  shift 2
  rails new $appname -m https://raw.github.com/pattonjp/rails-templates/master/$template.rb $@ -T -O
}