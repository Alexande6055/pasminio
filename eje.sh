#!/bin/bash
echo "creando variables"

DIR_PRINCIPAL="/home/proyecto/"
CARPETAS=("proyecto_1" "proyecto_2" "proyecto_3")
USUARIOS=("user_p1" "user_p2")
ARCHIVOS=("config-p1.conf" "config-p2.conf" "config-p3.conf")
REGISTROS=("activity-p1.log" "activity-p2.log" "activity-p3.log")
MKDIR="mkdir -p"
TOUCH="touch"
USERADD="sudo useradd -m -s /bin/bash"

echo "variables creadas"

echo "creando usuarios"
for US in "${USUARIOS[@]}"; do
  $USERADD "$US"
  echo "Usuario $US creado"
done
echo "usuarios creados"

echo "creando estructura de directorios"
$MKDIR "$DIR_PRINCIPAL"
for PROYECTO in "${CARPETAS[@]}"; do
  $MKDIR "$DIR_PRINCIPAL/$PROYECTO"
done
echo "creados los directorios"
echo "Creando los archivos de configuración y registro"

for i in "${!CARPETAS[@]}"; do
  P="${CARPETAS[$i]}"
  A="${ARCHIVOS[$i]}"
  R="${REGISTROS[$i]}"

  $TOUCH "$DIR_PRINCIPAL/$P/$A"
  $TOUCH "$DIR_PRINCIPAL/$P/$R"
done

echo "Se crearon los archivos de configuración y registro"

echo "Asignando permisos"
