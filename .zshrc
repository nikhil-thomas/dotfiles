# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ncoder/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gnzh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git golang fedora docker oc sudo)
plugins=(fedora sudo)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='emacs -nw'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export GOPATH=~/go
export GOROOT=/usr/local/go
PATH=${GOPATH}/bin:/usr/local/go/bin:$PATH
export PATH=~/scripts:${GOPATH}/bin:/usr/local/go/bin:$PATH

#alias spr="mplayer -cache 4096 -cache-min 50 -afm ffmpeg https://schlagerplanet.hoerradar.de/schlagerplanet-deutsch-mp3-hq"
# alias spr2="mplayer -nocache -afm ffmpeg http://wknc.sma.ncsu.edu:8000/wknchd1.mp3"
[ -z "$TMUX" ] && export TERM=xterm-256color

alias gsd="git status; sleep 2; git diff HEAD;"
alias gdh="git diff HEAD"
alias fsp="firefox -MOZ_LOG_FILE=/tmp/fsp.log \
                   --new-window https://chat.openshift.io/developers/channels/jr-braindump & sleep 1; \
                   firefox --new-tab https://mail.google.com/mail/u/1/#inbox \
                           --new-tab https://mail.google.com/mail/u/0/#inbox \
                           --new-tab https://calendar.google.com/calendar/r \
                           --new-tab https://trello.com/b/PwpqvpoZ/01nti-week \
                           --new-tab https://trello.com/b/7bHwUX8j/02nti-work \
                           --new-tab https://github.com/nikhil-thomas \
                           --new-tab https://github.com/orgs/fabric8io/projects/2 \
                           --new-tab https://time.is/compare/0000_1_Jan_2019_in_/Brisbane/Bangalore/Paris/Sweden/UTC/Westford/Raleigh/Rocklin &"

alias ftrp="firefox --MOZ_LOG_FILE=/tmp/fsp.log \
                    --new-window https://docs.google.com/spreadsheets/d/1B-tcjOT5BFPZSu-O4iNN4wdl-N3D_ik7cRrbg5X7XUE/edit#gid=1217401867 \
                    --new-window http://www.timer-tab.com/ &"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/ncoder/.sdkman"
[[ -s "/home/ncoder/.sdkman/bin/sdkman-init.sh" ]] && source "/home/ncoder/.sdkman/bin/sdkman-init.sh"
export JAVA_HOME=${HOME}/.sdkman/candidates/java/current

export PATH=$PATH:/usr/local/go/bin

alias kc=kubectl
alias k=kubectl

alias 'glg=git log --oneline --all --graph --decorate'
#alias ng-b='\.\/t25.sh 300 n-gage'
#alias ng='\.\/t25.sh 1500 take-5'

alias glnd="goland . &> /dev/null &"
alias fh="history | fzf"

export HISTCONTROL=ignoreboth

export LIBVIRT_DEFAULT_URI=qemu:///system


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ncoder/google-cloud-sdk/path.zsh.inc' ]; then . '/home/ncoder/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/home/ncoder/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/ncoder/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/home/ncoder/.crc/bin:$PATH"
alias owss="oc whoami --show-server"
alias gbd='cd $(git rev-parse --show-toplevel)'

alias wdn="watch -n 1 -d $1"

function looooooooong {
    START=$(date +%s.%N)
    $*
    EXIT_CODE=$?
    END=$(date +%s.%N)
    DIFF=$(echo "$END - $START" | bc)
    RES=$(python -c "diff = $DIFF; min = int(diff / 60); print('%s min' % min)")
    result="$1 completed in $RES, exit code $EXIT_CODE."
    echo -e "\n⏰  $result"
    ( espeak -s 150 -p 10 $result 2>&1 > /dev/null & )
}

source ~/.goto

alias ep="date '+%s'"
alias cpwd="xclip <(pwd)"
alias p12n-ts='date --utc "+%y%y%m%d%H%M"'

function mkcd() {
  mkdir -p $1
  cd $_
}

alias osdk=operator-sdk

function pane-title() {
  if [[ -z $1 ]]; then
    echo 'usage: pane-title <pane title>'
    return 0
  fi
  printf '\033]2;%s\033\\' $1
}

function seconds {
  if [[ -z $* ]]; then
    echo 'usage seconds <date>'
    exit 1
  fi
  echo $(( $(date +%s -d "$*") - $(date +%s) ))
}
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
eval "$(direnv hook zsh)"

