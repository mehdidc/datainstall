# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

export PATH=~/miniconda/bin:$PATH
source activate databoard-env
mesg n
