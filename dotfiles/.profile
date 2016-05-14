# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

MINICONDA=$HOME/miniconda2
export PATH=$MINICONDA/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$MINICONDA/lib
source activate databoard-env
