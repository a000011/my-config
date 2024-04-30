# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias gdesk="cd ~/Desktop/git/GlassesUSA-Desktop/"
alias gquiz="cd ~/Desktop/git/GlassesUSA-Quiz/"
alias gmob="cd ~/Desktop/git/GlassesUSA-Mobile/"
alias skuf="clear &&"
alias cds="cd __specs__/"
alias cdns="cd __new_specs__/"
alias cmaster="chromium https://master-gusa-mobile.gusadev.com/ &"
alias cdnu="cd __new_ui__/"
alias gitfp="git fetch && git pull"
alias sslack="systemctl restart snapd.service && sudo systemctl start snapd.apparmor && slack"

run() {
    number=$1
    shift
    for i in `seq $number`; do
      $@
    done
}

export NPM_TOKEN=

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
