#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -l --color=auto'
alias rdp='rdesktop -g 1920x1160 -P -z -x l -K -r sound:off -u soren shansen.synology.me:3389'
alias rdpNative='rdesktop -g 1440x860 -P -z -x l -K -r sound:off -u soren shansen.synology.me:3389'
alias monon='xrandr --output HDMI1 --mode 1920x1200 --pos 0x-1200'
alias monoff='xrandr --output HDMI1 --off'

PS1='[\u@\h \W]\$ '


