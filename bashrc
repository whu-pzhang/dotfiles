# .bashrc

# User specific aliases and functions
alias ls="ls --color=auto"
alias vi=vim
alias typora="open -a typora"
alias readlink=greadlink

export OMP_NUM_THREADS=4

# FC
export FC="gfortran -ffixed-line-length-none"

#SPECFEM 3D
ulimit -S -s unlimited

# Madagascar
#export RSFROOT=/opt/rsf
#source $RSFROOT/share/madagascar/etc/env.sh

# Seismic Unix
export CWPROOT=/opt/cwp
export PATH="$CWPROOT/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# MATLAB
export PATH="/Applications/MATLAB_R2017b.app/bin:$PATH"

#Java
export JAVA_HOME=$(/usr/libexec/java_home)

# scala
export PATH="/usr/local/opt/scala@2.11/bin:$PATH"

# clang/clang++
export PATH="/usr/local/opt/llvm/bin:$PATH"

# coreutils
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# added by Anaconda3 installer
export PATH="/Users/pzhang/anaconda3/bin:$PATH"


