ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pattonjp"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(bundler brew gem mecurial pattonjp node, heroku)

export PATH="/usr/local/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias gitk='gitk 2>/dev/null'

CORRECT_IGNORE=”subl” 

export BUNDLER_EDITOR='subl'
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

function railsapp {
  template=$1
  appname=$2
  shift 2
  rails new $appname -m https://raw.github.com/pattonjp/rails-templates/master/$template.rb $@ -T -O
}