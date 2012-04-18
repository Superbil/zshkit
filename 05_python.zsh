# Set Python path on brew
if [[ -x $(brew --prefix)/share/python ]]; then
  path=($(brew --prefix)/share/python $path)
fi

# Set brew-pip path
export PYTHONPATH=$(brew --prefix)/lib/python2.7/site-packages

# Set pythonbrew
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

typeset -U PYTHONPATH

# Load python rc on $HOME/.pythonrc
[[ -s $HOME/.pythonrc ]] && export PYTHONSTARTUP=$HOME/.pythonrc