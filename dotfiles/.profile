# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

MINCONDA=~/opt/conda
export PATH=$MINICONDA/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$MINICONDA/lib
