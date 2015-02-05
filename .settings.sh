# to use this file, put the following in ~/.bashrc, for mac ~/.bash_profile
# source ~/.settings.sh

##### alias settings  ######
# general
if [[ ${HOSTNAME:0:10} != "MBA-Wispur" ]]; then # mac pain...
	alias ls='ls -G --color'
fi
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias lll='ls -l'
alias vi='vim'
alias g='egrep -i --color'
alias g2='egrep -niH --color'
alias psg='ps aux | grep -i --color'
alias gall='find . -type f -print0 | xargs -0 egrep -niH --color'
alias glog='find ~/logs -type f -print0 | xargs -0 egrep -niH --color'
alias untar='tar xvfz'
alias tarit='tar cvfz'
alias alarm='echo -e "\a"'

# misc
alias vi='vim'
alias loadsettings='source ~/.settings.sh'
alias psweb='ps -u urworks -o rss,etime,pid,command'
alias gitl='git log --all --graph --decorate'
alias gits='git status'
alias gita='git add'
alias gitc='git commit -m'
alias gitd='git diff'
alias gitdc='gitd --cached'
alias viconf='vi wp-config.php'
if [[ ${HOSTNAME:0:10} != "MBA-Wispur" ]]; then # mac pain...
  alias apache='sudo service apache2'
  alias nginx='sudo service nginx'
fi
alias resapa='apache restart'
alias lamp='sudo /opt/lampp/lampp'
alias ressam='sudo restart smbd && sudo restart nmbd'
alias pm='python manage.py'
alias pms='pm syncdb'
alias pmr='pm runserver'
alias bpm='bpython manage.py'
alias fandroid='adb forward tcp:9999 localabstract:chrome_devtools_remote' # forwards android chrome debugging
alias pinghinet='ping 168.95.1.1'
alias fixpermissions='sudo chown -R www-data:www-data .; find -type f |xargs sudo chmod 664; find -type d |xargs sudo chmod 775'
alias sub='open /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

# MacBook Air spcific
if [[ ${HOSTNAME:0:10} = "MBA-Wispur" ]]; then
	export CLICOLOR=1
	export LSCOLORS=ExFxCxDxBxegedabagacad
	export LS_COLORS=ExFxCxDxBxegedabagacad
	alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
	export PYTHON_PATH='/usr/local/lib/python2.7/site-packages/django:$PYTHON_PATH'
	export PYTHONPATH='/usr/local/lib/python2.7/site-packages:$PYTHONPATH'
	# paths
	alias cdwo='cd /Users/joe/Workspace/ibeengo'
	alias checkport='lsof -i :8080'
	alias diff='/Applications/DiffMerge.app/Contents/MacOS/DiffMerge'
	# terminal title
	function title {
	  printf "\033]0;%s\007" "$1"
	}
	# postgres
	alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
fi

# set prompt colors
export PS1="\[\033[36m\]\u\[\033[37m\]@\[\033[36m\]\h\[\[\033[37m\]:\[\033[35m\]\w\[\033[37m\]\$ \[\033[m\]"

# ssh
alias sshtest='ssh deploy@test.ibeengo.com'
alias sshdeploy='ssh deploy@ibeengo.com'


