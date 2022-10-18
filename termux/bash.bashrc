#Configuracion de historial.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Prompt: Nombre de linea de comandos.
PROMPT_DIRTRIM=2
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

# Sugerencia de comando, cuando se escribe mal.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

#Mis alias personalizados:
alias aliass='nano /data/data/com.termux/files/usr/etc/bash.bashrc'
alias a='apt update && apt full-upgrade -y && apt autoremove -y && apt clean'
alias ll='exa -l'
alias la='exa -la'
alias amyshell='bash /data/data/com.termux/files/home/.baulera/myshell/termux/repomyshell'
alias m='cmatrix'
alias h='hollywood'
alias ab='source /data/data/com.termux/files/usr/etc/bash.bashrc'
alias borrar='rm -r'
alias permiso='chmod -x' 
alias fuego='cacafire'
alias mywikii='cd $HOME/.baulera/mywiki'
alias baulera='cd $HOME/.baulera'
alias myshell='cd /data/data/com.termux/files/home/.baulera/myshell' 
alias termuxshell='/data/data/com.termux/files/home/.baulera/myshell/termux'
alias ip='echo $(ip -o -4 addr list wlan0 |awk '{print $4}' |cut -d / -f1)'


#Correcion ortografica:
shopt -s cdspell
