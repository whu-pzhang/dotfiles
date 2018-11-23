# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vi=vim
#alias rm="rm -i"

ulimit -S -s unlimited

# FC
export FC="gfortran -ffixed-line-length-none"

# added by Anaconda3 installer
export PATH="/home/pzhang/anaconda3/bin:$PATH"

# cuda
export CUDA_HOME="/usr/local/cuda-9.0"
export PATH="$CUDA_HOME/bin:$PATH"
export LD_LIBRARY_PATH="$CUDA_HOME/lib64:$LD_LIBRARY_PATH"
