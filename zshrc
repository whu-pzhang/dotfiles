# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"

eval "$(starship init zsh)"

source /opt/homebrew/share/antigen/antigen.zsh

# Load the oh-my-zsh library
antigen use oh-my-zsh

# Bundles from the default repo
antigen bundle sudo
antigen bundle extract
antigen bundle autojump
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
# antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

