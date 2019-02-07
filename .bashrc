# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export GOPATH=~/go
export PATH=${GOPATH}/bin:$PATH

alias spr="mplayer -cache 4096 -cache-min 50 -afm ffmpeg https://schlagerplanet.hoerradar.de/schlagerplanet-deutsch-mp3-hq"
alias spr2="mplayer -nocache -afm ffmpeg http://wknc.sma.ncsu.edu:8000/wknchd1.mp3"
[ -z "$TMUX" ] && export TERM=xterm-256color

alias gsd="git status; sleep 2; git diff HEAD;"
alias gdh="git diff HEAD"
alias fsp="firefox --new-window https://chat.openshift.io/developers/channels/jr-braindump & sleep 1; firefox --new-tab https://mail.google.com/mail/u/0/#inbox --new-tab https://mail.google.com/mail/u/1/#inbox --new-tab https://calendar.google.com/calendar/r --new-tab https://trello.com/b/PwpqvpoZ/01nti-week --new-tab https://trello.com/b/7bHwUX8j/02nti-work --new-tab https://trello.com/b/L1lcoBXP/03nti-objective-skill-tools-information --new-tab https://trello.com/b/tmvD7f0g/04nti-shinny-objects --new-tab https://github.com/nikhil-thomas --new-tab https://github.com/orgs/fabric8io/projects/2 --new-tab https://time.is/compare/0030_05_Feb_2019_in_Brisbane/Bangalore/Paris/Sweden/Westford/Raleigh/Rocklin &"
alias ftrp="firefox --new-window https://docs.google.com/spreadsheets/d/1B-tcjOT5BFPZSu-O4iNN4wdl-N3D_ik7cRrbg5X7XUE/edit#gid=1217401867 --new-window http://www.timer-tab.com/ &"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/ncoder/.sdkman"
[[ -s "/home/ncoder/.sdkman/bin/sdkman-init.sh" ]] && source "/home/ncoder/.sdkman/bin/sdkman-init.sh"
export JAVA_HOME=${HOME}/.sdkman/candidates/java/current

export PATH=$PATH:/usr/local/go/bin

