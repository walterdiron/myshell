#!/bin/bash

#Posicionar
cd
clear

#Instalar herramientas
pkg install zsh -y
pkg install wget -y
pkg install curl -y
pkg install file -y
pkg install cmatrix -y
pkg install hollywood -y
apt install libcaca -y
pkg install htop -y
pkg install termux-api
pkg install man -y
pkg install figlet -y
pkg install zip -y
pkg install exa -y
termux-setup-storage

echo '. . . Paquete de herramientas instaladas . . .'
