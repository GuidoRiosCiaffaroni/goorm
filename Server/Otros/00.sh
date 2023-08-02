#!/bin/bash

# Nombre del paquete a instalar (reemplaza con el nombre real del paquete)
nombre_paquete="mc"

# Función para mostrar la barra de progreso durante la instalación
show_progress() {
    apt-get -y -qq install "$nombre_paquete" 2>&1 | pv -lep -s $(apt-cache show "$nombre_paquete" | grep "Installed-Size" | awk '{print $2}') >/dev/null
}

# Verificar si el paquete ya está instalado
if dpkg -s "$nombre_paquete" >/dev/null 2>&1; then
    echo "El paquete $nombre_paquete ya está instalado."
    exit 0
fi

# Actualizar la lista de paquetes antes de instalar
# sudo apt-get update

# Mostrar la barra de progreso mientras se instala el paquete
echo "Instalando $nombre_paquete..."
show_progress

# Comprobar si la instalación fue exitosa
if dpkg -s "$nombre_paquete" >/dev/null 2>&1; then
    echo "La instalación de $nombre_paquete fue exitosa."
else
    echo "La instalación de $nombre_paquete falló."
fi
