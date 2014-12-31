c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

alias gitcleanupremote="git checkout master && git remote update --prune | git branch -r --merged | grep -v master | sed -e 's/origin\//:/' | xargs git push origin"
alias gitcleanup="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"

function whiteboard {
  convert $1 -morphology Convolve DoG:15,100,0 -negate -normalize -blur 0x1 -channel RBG -level 60%,91%,0.1 $2
}

function railsapp {
  template=$1
  appname=$2
  shift 2
  rails new $appname -m https://raw.github.com/pattonjp/rails-templates/master/$template.rb $@ -T -O
}

function rails_composer {
  rails new $1 -m https://raw.github.com/RailsApps/rails-composer/master/composer.rb -O
}

function js2c {
  for FILE in `find . -name "*.js" -type f -o -path './node_modules' -prune -o -path './components' -prune`
  do
    echo $FILE
      if [ -e $FILE ] ; then
          COFFEE=${FILE//.js/.coffee}
          echo "converting ${FILE} to ${COFFEE}"
          js2coffee "$FILE" > "$COFFEE"
          rm $FILE
      else
          echo "File: {$1} does not exist!"
      fi
  done
}