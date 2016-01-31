# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vi=vim

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

# TeXLive 2015
export PATH=/usr/local/texlive/2015/bin/x86_64-linux:${PATH}
export INFOPATH=/usr/local/texlive/2015/texmf-dist/doc/info:${INFOPATH}
export MANPATH=/usr/local/texlive/2015/texmf-dist/doc/man:${MANPATH}

# CPS
export PATH=/opt/PROGRAMS.330/bin:${PATH}

# ZhuLP RF
export RFSCRIPTS=${HOME}/RF/scripts
export PATH=${RFSCRIPTS}:${PATH}
export PATH=${HOME}/Src/Shells:${PATH}
export MY_BIN=${HOME}/bin
export PATH=${MY_BIN}:${PATH}
export IASP91_TBL=${MY_BIN}/iasp91
export NR=${HOME}/src.import/Numerical_Recipes
export NR_BIN=${MY_BIN}
# GCAP
export PATH=${HOME}/Src/gcap:${PATH}

# Matlab
export PATH=/opt/matlab2009b/bin:${PATH}

# CWP
export CWPROOT=$HOME/cwp
export PATH=$PATH:${CWPROOT}/bin

# MPICH
export PATH=/usr/lib64/mpich/bin:${PATH}
module load mpi/mpich-x86_64

#OPENMP
#export PATH=/usr/lib64/openmpi/bin:${PATH}
#module load mpi/openmpi-x86_64

# fdelmodc
export PATH=${HOME}/OpenSource/bin:${PATH}

