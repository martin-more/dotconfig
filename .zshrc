if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

export PATH="/Users/martinmore/.local/bin:$PATH"


# Custom source
source ~/common/zsh-fun-alias
source ~/.zsh_aliases
for func_file in ~/functions/*; do
    source "$func_file"
done


fpath+=~/.zfunc
autoload -Uz compinit && compinit 


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
