# Path to your oh-my-zsh installation.
  export ZSH=/home/pzhang/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(sudo pip autojump)

# User configuration

#  export PATH="/home/pzhang/OpenSource/bin:/usr/lib64/mpich/bin:/opt/matlab2009b/bin:/home/pzhang/Src/gcap:/home/pzhang/bin:/home/pzhang/Src/Shells:/home/pzhang/RF/scripts:/opt/PROGRAMS.330/bin:/usr/local/texlive/2015/bin/x86_64-linux:/home/pzhang/.pyenv/shims:/home/pzhang/.pyenv/bin:/opt/GMT-5.2.1/bin:/opt/GMT-4.5.14/bin:/opt/TauP-2.1.2/bin:/opt/sac/bin:/usr/lib64/mpich/bin:/opt/matlab2009b/bin:/home/pzhang/Src/gcap:/home/pzhang/bin:/home/pzhang/Src/Shells:/home/pzhang/RF/scripts:/opt/PROGRAMS.330/bin:/usr/local/texlive/2015/bin/x86_64-linux:/home/pzhang/.pyenv/shims:/home/pzhang/.pyenv/bin:/opt/GMT-5.2.1/bin:/opt/GMT-4.5.14/bin:/opt/TauP-2.1.2/bin:/opt/sac/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/home/pzhang/cwp/bin:/home/pzhang/.local/bin:/home/pzhang/bin:/home/pzhang/cwp/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# User specific aliases and functions
alias vi=vim
#alias rm="rm -i"
alias time="/usr/bin/time -p"

ulimit -S -s unlimited

# FC
export FC="gfortran -ffixed-line-length-none"

# SAC
export SACHOME=/opt/sac
export SACAUX=$SACHOME/aux
export SAC_DISPLAY_COPYRIGHT=1
export SAC_PPK_LARGE_CROSSHAIRS=1
export SAC_USE_DATABASE=0
export PATH=$SACHOME/bin:$PATH

# TauP
export TAUPHOME=/opt/TauP-2.1.2
export PATH=${TAUPHOME}/bin:${PATH}

# GMT4
export GMT4HOME=/opt/GMT-4.5.14
export PATH=${GMT4HOME}/bin:${PATH}
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${GMT4HOME}/lib

# SOD
export PATH=${PATH}:/opt/sod-3.2.6/bin

# GMT4.0
#export GMT4HOME=/opt/GMT4.0
#export PATH=${GMT4HOME}/bin:${PATH}

# GMT5
export GMT5HOME=/opt/GMT-5.2.1
export PATH=${GMT5HOME}/bin:${PATH}
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${GMT5HOME}/lib64

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# TeXLive 2016
export PATH=/opt/texlive/2016/bin/x86_64-linux:${PATH}
export INFOPATH=/opt/texlive/2016/texmf-dist/doc/info:${INFOPATH}
export MANPATH=/opt/texlive/2016/texmf-dist/doc/man:${MANPATH}

# CPS
export PATH=/opt/PROGRAMS.330/bin:${PATH}

# ZhuLP RF
export SCRIPTHOME=${HOME}/Script
export RFSCRIPTS=${SCRIPTHOME}/hk/RF/scripts
export PATH=${RFSCRIPTS}:${PATH}
export PATH=${HOME}/src.import/hk/Src/Shells:${PATH}
export HKBINDIR=${HOME}/src.import/hk/bin
export PATH=${HKBINDIR}:${PATH}
export IASP91_TBL=${MY_BIN}/iasp91
export NR=${HOME}/src.import/Numerical_Recipes

export MY_BIN=${HOME}/bin
export PATH=${MY_BIN}:${PATH}


# GCAP
#export PATH=${HOME}/Src/gcap:${PATH}

# Matlab
export PATH=/opt/MATLAB/R2015b/bin:${PATH}

# CWP
export CWPROOT=$HOME/src.import/cwp
export PATH=$PATH:${CWPROOT}/bin

# MPICH
export PATH=/usr/lib64/mpich/bin:${PATH}
module load mpi/mpich-x86_64

#OPENMP
#export PATH=/usr/lib64/openmpi/bin:${PATH}
#module load mpi/openmpi-x86_64

# fdelmodc
export PATH=${HOME}/src.import/fdelmodc/bin:${PATH}

# intel
source /opt/intel/vtune_amplifier_xe_2016/amplxe-vars.sh quit
source /opt/intel/inspector_xe_2016/inspxe-vars.sh quiet
source /opt/intel/advisor_xe_2016/advixe-vars.sh quiet
source /opt/intel/bin/compilervars.sh intel64


# SEPlib
export SEPROOT=/home/pzhang/src.import/seplib
export SEPINC=${SEPROOT}/include
export PATH=${PATH}:${SEPROOT}/bin
export DATAPATH=/var/tmp/
if [ -n "$PYTHONPATH" ]; then
    export PYTHONPATH=${PYTHONPATH}:$SEPROOT/lib/python
else
    export PYTHONPATH=$SEPROOT/lib/python
fi


# Madagascar
source /home/pzhang/src.import/rsf/share/madagascar/etc/env.sh


export NVM_DIR="/home/pzhang/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# hypoDD
export PATH=${PATH}:$HOME/src.import/HYPODD/bin

# thefuck
eval "$(thefuck --alias)"

