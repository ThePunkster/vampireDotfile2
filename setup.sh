#!/bin/bash

echo "Verificando rutas"

# Verificando las carpetas necesarias
if [ -d "$HOME/.config/polybar" ]; then
    echo -e "%{F#3ecae6}/nEliminando polybar/n"
    sudo rm -r "$HOME/.config/polybar/n"
elif [ -d "$HOME/.config/bin" ]; then
    echo -e "/n%{F#3ecae6}Eliminando bin/n"
    sudo rm -r "$HOME/.config/bin"
elif [ -d "$HOME/.config/picom" ]; then
    echo -e "%{F#3ecae6}/nEliminando picom/n"
    sudo rm -r "$HOME/.config/picom"
fi

echo -e "%{F#3ecae6}\nCreando carpetas y pegando archivos\n"

# Crear directorios con la opción -p para crear padres si no existen
mkdir -p "$HOME/.config/polybar"
mkdir -p "$HOME/.config/bin"
mkdir -p "$HOME/.config/picom"
mkdir -p "$HOME/background"

# Dar permisos a los archivos
chmod +x launch.sh ethernet_ip.sh ovpn_htb_ip.sh victimip.sh

# Copiar archivos a los directorios adecuados
cp colors.ini modules.ini config.ini launch.sh "$HOME/.config/polybar"
cp ethernet_ip.sh ovpn_htb_ip.sh victimip.sh target "$HOME/.config/bin"
cp picom.conf "$HOME/.config/picom"
cp vampire.jpg "$HOME/background"

# Agregar comandos al archivo bspwmrc
echo "$HOME/.config/polybar/./launch.sh" >> "$HOME/.config/bspwm/bspwmrc"
echo "picom" >> "$HOME/.config/bspwm/bspwmrc"
echo "--bg-fill $HOME/background/vampire.jpg" >> "$HOME/.config/bspwm/bspwmrc"

# Actualizar paquetes
sudo apt update

echo -e "%{F#3ecae6}\nPor favor reinicie bspwm para ver los cambios\n"
