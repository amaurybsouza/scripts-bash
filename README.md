# scripts
Um pouco de shell script
#!/bin/bash
##################################################
# Desenvolvedor: Amaury Borges Souza             #
# E-mail: amaurybsouza@gmail.com                  #
# Lançamento: 12/12/2016                         #
# Plataforma: Ubuntu 14.04                       #
##################################################

################################################################
# INICIO DO PROCESSO DE INSTALAÇÃO DE PROGRAMAS                #
################################################################

# - Skype                 
# - VIM
# - VLC
# - X11VNC
# - Pinta
# - Gimp
# - Inkscape
# - Chromium-Browser
# - Brasero
# - Suite Libre Office
# - Codecs de vídeo e multimidia
# - Fonte PT-BR (Brasil)

apt-get update ; apt-get upgrade -y

apt install ubuntu-restricted-extras -y
apt-get install language-pack-gnome-pt language-pack-pt-base -y
apt-get install gimp -y
apt install brasero -y
apt install vim -y
apt-get install x11vnc -y
apt install libreoffice -y
apt install pinta -y
apt-get install inkscape -y
apt-get install chromium-browser -y
