source ~/dotfiles/bash/env
source ~/dotfiles/bash/config
source ~/dotfiles/bash/aliases

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# rbenv

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
