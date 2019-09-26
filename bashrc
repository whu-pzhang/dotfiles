# .bashrc

# User specific aliases and functions
alias ls="ls --color=auto"
alias lc=colorls
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
#export CWPROOT=/opt/cwp
#export PATH="$CWPROOT/bin:$PATH"

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

export PATH="/Users/pzhang/bin:$PATH"


# proxy settings
function proxy_off(){
    unset http_proxy
    unset https_proxy
    echo -e "proxy closed."
}

function proxy_on(){
    export no_proxy="localhost,127.0.0.1,localaddress.,localdomain.com"
    export http_proxy="http://127.0.0.1:8118"
    export https_proxy=$http_proxy
    echo -e "proxy on."
}


LANG="en_US.UTF-8"


