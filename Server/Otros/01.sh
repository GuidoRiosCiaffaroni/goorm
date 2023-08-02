#!/bin/bash

# Función para instalar una aplicación y mostrar el avance con pv
install_with_progress() {
    local package_name="$1"
    local tmp_file="/tmp/${package_name}_install.log"

    # Instalar la aplicación redirigiendo la salida a un archivo temporal
    sudo apt-get install -y "$package_name" &> "$tmp_file" &
    local pid=$!

    # Mientras el proceso de instalación está en ejecución, mostrar el avance con pv
    while ps -p "$pid" > /dev/null; do
        pv -n "$tmp_file"
        sleep 1
    done

    # Limpiar el archivo temporal
    rm -f "$tmp_file"
}

# Nombre del paquete a instalar (reemplaza con el nombre real del paquete)
nombre_paquete="mc"

# Verificar si el paquete ya está instalado
if dpkg -s "$nombre_paquete" >/dev/null 2>&1; then
    echo "El paquete $nombre_paquete ya está instalado."
    exit 0
fi

# Actualizar la lista de paquetes antes de instalar (opcional, pero recomendado)
sudo apt-get update

# Instalar la aplicación con el avance mostrado por pv
echo "Instalando $nombre_paquete..."
install_with_progress "$nombre_paquete"

# Comprobar si la instalación fue exitosa
if dpkg -s "$nombre_paquete" >/dev/null 2>&1; then
    echo "La instalación de $nombre_paquete fue exitosa."
else
    echo "La instalación de $nombre_paquete falló."
fi
