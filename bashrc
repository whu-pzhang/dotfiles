# .bashrc

# Source global definitions
if [ -f /etc/profile ]; then
	source /etc/profile
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vi=vim
#alias rm="rm -i"

ulimit -S -s unlimited
export OMP_NUM_THREADS=4

# FC
export FC="gfortran -ffixed-line-length-none"


# home bin
export PATH="$HOME/bin:$PATH"

export PATH=$PATH:$HOME/.local/bin

