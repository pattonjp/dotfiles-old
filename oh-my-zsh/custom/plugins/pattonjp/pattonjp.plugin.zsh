c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

g() { cd ~/github/$1; }
_g() { _files -W ~/github -/; }
compdef _c c