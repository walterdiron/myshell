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



# Prompt: Nombre de linea de comandos.
PROMPT_DIRTRIM=2
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

unset color_prompt force_color_prompt


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


#Mis alias personalizados:
alias a='apt update && apt full-upgrade -y && apt autoremove -y && apt clean && clear && echo "Todo Actualizado..."'
alias ll='exa -l'
alias la='exa -la'
alias m='cmatrix'
alias baulera='cd /home/$USER/.baulera'
alias ip="echo $(ip -o -4 addr list wlp2s0 |awk '{print $4}' |cut -d / -f1)"

#Correcion ortografica:
shopt -s cdspell
