# .bashrc

# User specific aliases and functions
alias vi=vim
alias typora="open -a typora"
alias readlink=greadlink

export OMP_NUM_THREADS=4

# FC
export FC="gfortran -ffixed-line-length-none"

#SPECFEM 3D
ulimit -S -s unlimited

# Madagascar
export RSFROOT=/opt/rsf
source $RSFROOT/share/madagascar/etc/env.sh

# Seismic Unix
export CWPROOT=/opt/cwp
export PATH=${PATH}:$CWPROOT/bin

# NVM
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# MATLAB
export PATH=$PATH:/Applications/MATLAB_R2017b.app/bin

#Java
export JAVA_HOME=$(/usr/libexec/java_home)

# scala
export PATH="/usr/local/opt/scala@2.11/bin:$PATH"

# clang/clang++
export PATH="/usr/local/opt/llvm/bin:$PATH"

# greadlink
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
