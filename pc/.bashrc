# Si no se ejecuta de manera interactiva, no haga nada
case $- in
    *i*) ;;
      *) return;;
esac

#Historial de comandos
HISTCONTROL=ignoreboth

#Agregar al archivo del historial, no lo sobrescribirá
shopt -s histappend

#Longitud del historial
HISTSIZE=2000
HISTFILESIZE=2000

#Verifique el tamaño de la ventana después de cada comando y, si es necesario,
#Actualizar los valores de líneas y columnas.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi


# Prompt: Nombre de linea de comandos.
PROMPT_DIRTRIM=2
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

#Mis alias personalizados:
alias aliass='nano /home/$USER/.bashrc'
alias a='apt update && apt full-upgrade -y && apt autoremove -y && apt clean'
alias ll='exa -l'
alias la='exa -la'
alias amyshell='bash /data/data/com.termux/files/home/.baulera/myshell/termux/repomyshell'
alias m='cmatrix'
alias h='hollywood'
alias ab='source /home/$USER/.bashrc'
alias borrar='rm -r'
alias permiso='chmod 777' 
alias fuego='cacafire'
alias mywikii='cd /home/$USER/.baulera/mywiki'
alias baulera='cd /home/$USER/.baulera'
alias myshell='cd /home/$USER/.baulera/myshell' 
alias pc='cd /home/$USER/.baulera/myshell/pc'