clear
cd
mkdir Backap-termux
rm -r /data/data/com.termux/files/usr/etc/motd-playstore
rm -r /data/data/com.termux/files/usr/etc/motd-playstore.dkg-old
rm -r /data/data/com.termux/files/usr/etc/motd.sh
cp /data/data/com.termux/files/usr/etc/bash.bashrc $HOME/Backap-termux
cd
cp .shortcuts Backap-termux/
zip 
echo '.:Backap terminado:.'