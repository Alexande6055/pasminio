#!/bin/bash
$CHMOD ="chmod"
$MKDIR="mkdir"
$USERADD="useradd"
$ECHO="echo"
$CHOWN="chown"
$TOUCH="touch"

#crear una estructura de carpetas
$ECHO "creando una estruictura de carpetas"

$MKDIR -p /home/proyectos
$TOUCH /home/proyectos
$TOUCH /home/proyectos/pproyecto1
$TOUCH /home/proyectos/pproyecto2
$TOUCH /home/proyectos/pproyecto3

#configurar usuarios y permiosos
$ECHO "creando usuario"

$USERADD user_p1:user_p1
$USERADD user_p2:user_p2
$USERADD user_p3:user_p3

$CHOWN -m -s /proyecto/proyecto1/config_p1.conf
$CHOWN -m -s /proyecto/proyecto2/config_p2.conf
$CHOWN -m -s /proyecto/proyecto3/config_p3.conf

$CHOWN -m -s /proyecto/proyecto1/activity_p1.conf
$CHOWN -m -s /proyecto/proyecto2/activity_p2.conf
$CHOWN -m -s /proyecto/proyecto3/activity_p3.conf

#asignar permisos
$CHMOD 777
$CHMOD 777
$CHMOD 777
