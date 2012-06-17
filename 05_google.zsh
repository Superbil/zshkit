#!/usr/bin/env zsh
# google's tools setting

# set gsutil path
if [[ -x $HOME/project/gsutil ]]; then
  path=($HOME/project/gsutil $path)
  pythonpath=(${PYTHONPATH} $HOME/project/gsutil/boto)
fi

# setup depot_tools
if [[ -x $HOME/project/depot_tools ]]; then
  path=($HOME/project/depot_tools $path)
fi
