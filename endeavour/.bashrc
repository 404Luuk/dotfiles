alias s='sudo'
alias svim='sudo vim'

alias x='sudo pacman -Syu --needed'
alias xs='pacman -Ss'
alias xr='sudo xbps-remove -fRoOv'

xl() {
	pacman -Ss $1 | less
}
xg() {
	pacman -Ss $1 | grep $2
}

alias xc='sudo xbps-reconfigure -fv'
alias xpkg='sudo xbps-pkgdb -u && sudo xbps-pkgdb -av'

alias qb='vim ~/.bashrc'
alias sb='source ~/.bashrc'
alias ln='sudo ln'
alias sv='sudo sv'
alias rm='sudo rm'

alias pf='sudo pstate-frequency -S -g performance -t on -m 100 -n 0'
alias psv='sudo pstate-frequency -S -g schedutil -t off -m 100 -n 0'

alias off='sudo poweroff'
alias reboot='sudo reboot'

qsv() {
	ls /etc/sv/
}
mksv() {
	sudo systemctl enable $1 && sudo systemctl start $1
}
rmsv() {
	 sudo systemctl disable $1 && sudo systemctl stop $1
}
svfr() {
	sudo system reload $1
		
}

xl() {
	pacman -Ss $1 | less
}
xg() {
	pacman -Ss $1 |  grep $2
}

qc() {
	nnn ~/.config/$1
}

ipd() {
	sudo ip link set $1 down
}
ipu() {
	sudo ip link set $1 up
}

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file'"
  fi
}



# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -llllvghn --color=auto'
PS1='[\A]/\W > \$ '
