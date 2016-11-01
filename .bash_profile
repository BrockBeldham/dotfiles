# .bash_profile

# If .bash_profile exists, bash doesn't read .profile
if [[ -f ~/.profile ]]; then
  . ~/.profile
fi

# If the shell is interactive and .bashrc exists, get the aliases and functions
if [[ $- == *i* && -f ~/.bashrc ]]; then
    . ~/.bashrc
fi

# Load in the git branch prompt script.
source ~/.git-prompt.sh

PS1="\[\033[1;33m\]\t\[\033[0m\]-\[\033[34m\]\u\[\033[0m\]\w\[\033[32m\]\$(__git_ps1)\[\033[0m\]$ "
export PS1
