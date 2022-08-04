#Posicionar
clear
cd

#Actualizar
apt update
apt full-upgrade -y
apt autoremove -y
apt clean
echo 'A C T U A L I Z A C I O N   C O M P L E T A'
echo '  Espere que se instalen los programas'
sleep 10

#Instalar herramientas
pkg install wget -y
pkg install git -y
pkg install cmatrix -y
pkg install openssh -y
pkg install htop -y
pkg install termux-api -y
pkg install man -y
pkg install figlet -y
echo 'Paquete de herramientas instaladas'

#Aviso de finalizacion del script
termux-vibrate
termux-vibrate
termux-vibrate
termux-vibrate
termux-vibrate
termux-vibrate
echo '          . . . T O D O  L I S T O . . .'