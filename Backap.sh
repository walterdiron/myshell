clear
cd
mkdir backap-termux
#Bash.bashrc
cp /data/data/com.termux/files/usr/etc/bash.bashrc $HOME/backap-termux

# .shortcuts 
cp .shortcuts backap-termux/

#Compresion
zip b-termux.zip backap-termux

#Borrado
rm -r backap-termux

echo '.:Backap terminado:.'