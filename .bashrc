# .bashrc

# Customize prompt
oldps1="$PS1"

#PS1="\e[0;36m[`basename \"\e[0;36m$VIRTUAL_ENV\"`] [\D{%H:%M:%S}] \u@\h > \W  $ \e[m"
PS1="\e[0;36m[\D{%H:%M:%S}] \u@\h > \W $ \e[m"


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

original_ls_colors="$LS_COLORS"
LS_COLORS="di=1;94"
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias work3="source env3/bin/activate"
alias work="source env/bin/activate"
alias stopwork="deactivate"
alias workon="conda activate"
alias workoff="conda deactivate"
alias loadbash="source ~/.bashrc"
alias watchtail="watch -n 2 tail -30"
alias sq='squeue -o "%.9i %.9P %.30j %.8u %.2t %.10M %.6D %.25S %.25e %.10N"'
function watcha {
    watch -n 0.5 $(alias "$@" | cut -d\' -f2)
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/abair/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/abair/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/abair/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/abair/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export PATH=/usr/local/cuda/bin:$PATH

