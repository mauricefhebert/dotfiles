# Set PATH
export PATH="/home/maurice/.local/bin:$HOME/bin:/usr/local/bin:$PATH"
export PATH="$PATH:/usr/lib64/dotnet"
export PATH="$PATH:$HOME/.dotnet/tools"
export DOTNET_ROOT="/usr/lib64/dotnet"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export DPRINT_INSTALL="/home/maurice/.dprint"
export PATH="$DPRINT_INSTALL/bin:$PATH"
export DENO_INSTALL="/home/maurice/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export OPENAI_API_KEY="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"

# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Oh-My-Zsh installation path
export ZSH="$HOME/.oh-my-zsh"

# Oh-My-Zsh theme
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Oh-My-Zsh plugins
plugins=(git docker)

# Load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# User aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cl='clear'

# Zsh completion system
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/mauricefh/.zshrc'

autoload -Uz compinit
compinit

# History configuration
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Key bindings
bindkey -e

# Load Powerlevel10k prompt configuration if it exists
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# End of .zshrc configuration


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
