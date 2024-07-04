alias s='sudo'
alias svim='sudo vim'

alias x='sudo xbps-install -Suyv'
alias xs='xbps-query -Rs '
alias xr='sudo xbps-remove -fRoOv'

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
	sudo ln -s /etc/sv/$1 /var/service
}
rmsv() {
	sudo rm -rf /var/service/$1
}
svfr() {
	sudo sv force-reload /var/service/*
}
svls() {
	sudo sv status /var/service/*
}
svup() {
	sudo sv up /var/service/$1
}
svdn() {
	sudo sv force-stop /var/service/$1
}


xl() {
	xbps-query -Rs $1 | less
}
xg() {
	xbps-query -Rs $1 |  grep $2
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

alias ls='ls --color=auto'
PS1='/\W > \$ '
