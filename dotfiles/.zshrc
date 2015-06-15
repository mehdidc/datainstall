# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic" #"robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git cp tmux screen pip lol fabric)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

export PATH="/mnt/datacamp/anaconda/bin:$PATH"
export PATH=$PATH:/root/local/smac-v2.08.00-master-731

alias start_screen_server="screen -S $(basename $(pwd))_server"
alias start_screen_fetch="screen -S $(basename $(pwd))_fetch"
alias start_screen_train="screen -S $(basename $(pwd))_train"

alias start_screen_server_="screen -m -d -S $(basename $(pwd))_server fab serve"
alias start_screen_fetch_="screen -m -d -S $(basename $(pwd))_fetch fab repeat_fetch"
alias start_screen_train_="screen -m -d -S $(basename $(pwd))_train fab train leaderboard"

alias attach_screen_server_="screen -x $(basename $(pwd))_server"
alias attach_screen_fetch_="screen -x $(basename $(pwd))_fetch fab"
alias attach_screen_train_="screen -x $(basename $(pwd))_train fab"

# I usually mount my pdisk at /mnt/ and 
# put occasional confs in utils.sh
# (the e is missing on purpose, to
# prevent potential clashes)
if [[ -e /mnt/utils.sh ]]; then 
    source /mnt/utils.sh
    echo "[+] utils.sh sourced."
fi 

source ~/.profile
