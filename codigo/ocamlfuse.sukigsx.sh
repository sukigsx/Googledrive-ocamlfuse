#!/bin/bash

#forma de utilizar los colores en echo
#echo -e "${rojo}Estes es el texto en rojo.${borra_colores"
#colores
rojo="\e[0;31m\033[1m" #rojo
verde="\e[;32m\033[1m" 
azul="\e[0;34m\033[1m"
amarillo="\e[0;33m\033[1m"
rosa="\e[0;35m\033[1m"
turquesa="\e[0;36m\033[1m"
borra_colores="\033[0m\e[0m" #borra colores
###################################################################################################
#toma el control al pulsar control + c
trap ctrl_c INT
function ctrl_c()
{
clear
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "-                                          ___                     _                                                                          -"
echo "-                                         / __|  ___   ____   __  (_)  ____   ___    ____   ___   _ _                                         -"
echo "-                                        | (_ | |  _| / _  | / _| | | / _  | (_-<   |  _ \ / _ \ |  _|                                        -"
echo "-                                         \___| |_|   \____| \__| |_| \____| /__/   | .__/ \___/ |_|                                          -"
echo "-                                                                                   |_|                                                       -"
echo "-                            _   _   _     _   _   _                               _                     _          _                         -"
echo "-                           | | | | | |_  (_) | | (_)  ___  ____   _ _     ____   (_)    ___  __   _ _  (_)  ____  | |_                       -"
echo "-                           | |_| | |  _| | | | | | | |_ / / _  | |  _|   |    \  | |   (_-< / _| |  _| | | |  _ \ |  _|                      -"
echo "-                            \___/   \__| |_| |_| |_| /__| \____| |_|     |_|_|_| |_|   /__/ \__| |_|   |_| |  __/  \__|                      -"
echo "-                                                                                                           |_|                               -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
exit
}

####################################################################
# empieza lo gordo

#comprueba la conexion a internet
if ping -c1 google.com &>/dev/null;
then
        echo "";
else
        clear
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
        echo "|                                                                                                                                             |"
        echo "|                          ███████        ██    ██        ██   ██        ██         ██████         ███████        ██   ██                     |"
        echo "|                          ██             ██    ██        ██  ██         ██        ██              ██              ██ ██                      |"
        echo "|                          ███████        ██    ██        █████          ██        ██   ███        ███████          ███                       |"
        echo "|                               ██        ██    ██        ██  ██         ██        ██    ██             ██         ██ ██                      |"
        echo "|                          ███████         ██████         ██   ██        ██         ██████         ███████        ██   ██                     |"
        echo "|                                                                                                                                             |"
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
        echo -e "-${verde}  Diseñado por sukigsx / Contacto: | sukisx.mbsistemas@gmail.com      |${borra_colores}                          Para mejor visualizacion, presiona F11.     -"
        echo -e "-${verde}                                   | https://mbsistemas.ddns.net      |${borra_colores}                          Control + C -->> finalizar script.          -"
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
        echo -e "-${verde} Nombre del script --> ocamlfuse.sukigsx.sh ${borra_colores}                                                                                                 -"
        echo "-                                                                                                                                             -"
        echo -e "-${rojo} No hay conexion a internet.${borra_colores}                                                                                                                 -"
        echo -e "-${rojo} Sin conexion no funciana el script.${borra_colores}                                                                                                         -"
        echo "-                                                                                                                                             -"
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
        exit
fi




while :
do
clear
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "|                                                                                                                                             |"
echo "|                          ███████        ██    ██        ██   ██        ██         ██████         ███████        ██   ██                     |"
echo "|                          ██             ██    ██        ██  ██         ██        ██              ██              ██ ██                      |"
echo "|                          ███████        ██    ██        █████          ██        ██   ███        ███████          ███                       |"
echo "|                               ██        ██    ██        ██  ██         ██        ██    ██             ██         ██ ██                      |"
echo "|                          ███████         ██████         ██   ██        ██         ██████         ███████        ██   ██                     |"
echo "|                                                                                                                                             |"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "-${verde}  Diseñado por sukigsx / Contacto: | sukisx.mbsistemas@gmail.com      |${borra_colores}                          Para mejor visualizacion, presiona F11.     -"
echo -e "-${verde}                                   | https://mbsistemas.ddns.net      |${borra_colores}                          Control + C -->> finalizar script.          -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "-${verde} Nombre del script --> ocamlfuse.sukigsx.sh ${borra_colores}                                                                                                 -"
echo "-                                                                                                                                             -"
echo -e "-${verde} Descripcion.${borra_colores}     Utilidad para sincronizar tu cuenta de google-drive.                                                                       -"
echo -e "-${verde} Funcionamiento.${borra_colores}  Ver manual de funcionamiento, opcion 90 del menu.                                                                          -"
echo "-                                                                                                                                             -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "-                                                                                                                                             -"
echo "-  1. Instalar/Configurar/Crear conexiones nuevas.                                                                                            -"
echo "-  2. Ver conexiones actuales.                                                                                                                -"
echo "-                                                                                                                                             -"
echo -e "-  3. ${amarillo}Montar/activar conexiones.${borra_colores}                                                                                                              -"
echo -e "-  4. ${amarillo}Desmontar/Desactivar conexiones.${borra_colores}                                                                                                        -"
echo "-                                                                                                                                             -"
echo -e "-  5. ${rojo}Ver / editar fichero crontab.${borra_colores}                                                                                                           -"
echo -e "-  6. ${rojo}Borrar conexiones.${borra_colores}                                                                                                                      -"
echo "-                                                                                                                                             -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "-                                                                                                                                             -"
echo "- 80. Ver el repositorio del creador.                                                                                                         -"
echo "- 90. Manual de funcionamiento                                                                                                                -"
echo "- 99. Atras / Salir                                                                                                                           -"
echo "-                                                                                                                                             -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -n "- Seleccione una opcion del menu -->> "
read opcion
case $opcion in
    
    1)  #Instalar/Configurar/Crear conexiones nuevas
        which google-drive-ocamlfuse 2>/dev/null 0>/dev/null
        ocamlfuse=$?
        veces="0"
   
        
        while [ $ocamlfuse -gt 0 ]
        do
                 
            while [ $veces = "2" ]
            do
                clear
                echo ""
                echo -e "${rojo}No puede instalar, posiblemente NO tengas conexion a internet. "
                echo -e "${amarillo}Repitelo cuando tengas conexion o este solucionado el problema.${borra_colores}"
                echo ""
                exit
            done
            
            let "veces=veces+1"
            echo -e "${rojo} Software necesario NO instalado.${borra_colores}"
            echo -e "${amarillo} Instalando google-drive-ocamlfuse.${borra_colores}"
            sleep 2
            echo ""
            sudo add-apt-repository ppa:alessandro-strada/ppa -y #2>/dev/null 1>/dev/null 0>/dev/null
            sudo apt update #2>/dev/null 1>/dev/null 0>/dev/null
            sudo apt-get install google-drive-ocamlfuse -y #2>/dev/null 1>/dev/null 0>/dev/null
            which google-drive-ocamlfuse #2>/dev/null 1>/dev/null 0>/dev/null
            ocamlfuse=$?
        done
        clear
        echo ""
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo "- Empezamos.....                                                                                                    control + c para salir    -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo ""
        read -p "- Introduce el nombre de la carpeta donde sincronizar google drive /home/$(whoami)/ -->> " carpeta_drive;
        echo "- La ruta de creaccion de carpeta sera /home/$(whoami)/$carpeta_drive/";
        echo -n "- Los datos son correctos ? ( S/N ) -->> ";
        read sino;
        if [ $sino = "S" ] || [ $sino = "s" ] 2>/dev/null 1>/dev/null 0>/dev/null
        then
            if [ -d /home/$(whoami)/$carpeta_drive ]
            then
                google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/;
                google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/;
                clear
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo " Listo ................";
                echo ""
                echo " Datos de Drive estan montados en la carpeta /home/$(whoami)/$carpeta_drive. Abre tu explorador de archivos para verlo."
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo -e "${amarillo} Para que se monte automaticamente al reiniciar tu ordenador, hay que incluirlo en el Crontab de tu usuario."
                echo " Se montara automaticamente al reiniciar, pero si tu conexion a internet falla, el equipo se te relentizara."
                echo -e " Tendras que parar el servicio manualmente o conectarlo a internet.${borra_colores}"
                echo ""
                read -p " Una vez que sabes esto, Quieres incluirlo en crontab. (S o N) ? " sino
                if [ $sino = "s" ] || [ $sino = "S" ]
                then                
                	(crontab -l 2>/dev/null; echo "#google-drive-ocalfuse, $carpeta_drive  cada reinicio.") | crontab -
                	(crontab -l 2>/dev/null; echo "@reboot google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/") | crontab -
                	echo ""
                	echo " Contenido metido en crontab"
                	echo ""
                	echo " Puedes ver o modificar crontab con la siguiente orden:"
                	echo " crontab -e"
                	read " Pulsa una tecla para continuar" pause
                else
                	echo ""
                	echo " Perfecto, no incluimos nada al crontab"
                	echo " Recuerda que tendras que montar las unidades de forma manual al reiniciar tu sistema"
                	echo " con la orden : google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/"
                	echo ""
                	read " Pulsa una tecla para continuar" pause
                fi
                
            else
                mkdir /home/$(whoami)/$carpeta_drive;
                google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/;
                google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/;
                clear
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo " Listo ................";
                echo ""
                echo " Datos de Drive estan montados en la carpeta /home/$(whoami)/$carpeta_drive. Abre tu explorador de archivos para verlo."
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo -e "${amarillo} Para que se monte automaticamente al reiniciar tu ordenador, hay que incluirlo en el Crontab de tu usuario."
                echo " Se montara automaticamente al reiniciar, pero si tu conexion a internet falla, el equipo se te relentizara."
                echo -e " Tendras que parar el servicio manualmente o conectarlo a internet.${borra_colores}"
                echo ""
                read -p " Una vez que sabes esto, Quieres incluirlo en crontab. (S o N) ? " sino
                if [ $sino = "s" ] || [ $sino = "S" ] 2>/dev/null 1>/dev/null 0>/dev/null
                then                
                	(crontab -l 2>/dev/null; echo "#google-drive-ocalfuse, $carpeta_drive  cada reinicio.") | crontab -
                	(crontab -l 2>/dev/null; echo "@reboot google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/") | crontab -
                	echo ""
                	echo " Contenido metido en crontab"
                	echo ""
                	echo " Puedes ver o modificar crontab con la siguiente orden:"
                	echo " crontab -e"
                	echo ""
                	read -p " Pulsa una tecla para continuar" pause
                else
                	echo ""
                	echo " Perfecto, no incluimos nada al crontab"
                	echo " Recuerda que tendras que montar las unidades de forma manual al reiniciar tu sistema"
                	echo " con la orden : google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/"
                	echo ""
                	read -p " Pulsa una tecla para continuar" pause
                fi
            fi;
        else
            echo "---------------------------------------------------------------------------------------------------------------------------------------------------";
            echo "- OK.... Todo cancelado.....Empezamos de nuevo......                                                                                              -";
            echo "- Repite con el paso 1. Pulsa enter para continuar                                                                                                -";
            echo "---------------------------------------------------------------------------------------------------------------------------------------------------";
            read pause;
    fi;;

	2)  #Ver conexiones actuales
        clear
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
        echo "- Listado de unidades montadas.                                                                                                               -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        ls $HOME/.gdfuse 2>/dev/null 0>/dev/null
        read pause;;
        
    3)  #Montar acrivar conexion
        clear
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
        echo "- Listado de unidades montadas.                                                                                                               -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        ls $HOME/.gdfuse 2>/dev/null 0>/dev/null
        echo ""
        read -p "- Dime el nombre de conexion para activar -->> " conexion
        if [ -d /home/$(whoami)/.gdfuse/$conexion ] && [ $conexion  ]
        then
            google-drive-ocamlfuse -label $conexion /home/$(whoami)/$conexion/
            if [ $? = "0" ] 2>/dev/null 1>/dev/null 0>/dev/null
            then
                echo ""
                echo -e "- ${verde}La conexion $conexion, montada con exito.$conexion.${borra_colores}"
                read pause
            else
                echo ""
                echo -e "- ${rojo}La conexion $conexion, No se ha podido montar.${borra_colores}"
                read pause
            fi
        else
        	echo ""
		echo -e "- ${amarillo}No lo has escrito correctamente o bien no existe.${borra_colores}"
        	read pause
        fi;;
        
    4)  #Desmontar/Desactivar conexion
        clear
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
        echo "- Listado de unidades montadas.                                                                                                               -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        ls $HOME/.gdfuse 2>/dev/null 0>/dev/null
        echo ""
        read -p "- Dime el nombre de conexion a desmontar -->> " conexion
        if [ -d /home/$(whoami)/.gdfuse/$conexion ] && [ $conexion  ]
        then
		fusermount -u $conexion 2>/dev/null 1>/dev/null 0>/dev/null
		if [ $? = "0" ] 2>/dev/null 1>/dev/null 0>/dev/null
		then
			echo ""
			echo -e "- ${verde}Desmontada la conexion $conexion.${borra_colores}"
			read pause
		else
			echo ""
			echo -e "- ${rojo}No ha sido posible desmontar $conexion.${borra_colores}"
			read pause
		fi

        else
        	echo ""
		echo -e "- ${amarillo}No lo has escrito correctamente o bien no existe.${borra_colores}"
        	read pause
        fi;;
      


    5)  #ver editar crontab
        clear
        crontab -e;;
        


    6)	#Borrar conexiones
        clear
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo "- Listado de conexiones para borrar.                                                                                                          -";
        echo "- Se borrara tambien la carpeta de montaje.                                                                                                   -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        ls $HOME/.gdfuse 2>/dev/null 0>/dev/null
        echo ""
        read -p "- Dime el nombre de conexion a borrar -->> " conexion
        if [ -d /home/$(whoami)/.gdfuse/$conexion ] && [ $conexion  ]
        then
                if [ /home/$(whoami)/$conexion/* == "/home/$(whoami)/$conexion/*"  ] 2>/dev/null 1>/dev/null 0>/dev/null
                then
                    echo ""
                    echo -e "- ${verde}La carpeta $conexion NO tiene contenido.${borra_colores}"
                    echo -e "- ${verde}Se procede a la eliminacion.${borra_colores}"
                    rm -r /home/$(whoami)/$conexion 2>/dev/null 1>/dev/null 0>/dev/null
                    rm -r /home/$(whoami)/.gdfuse/$conexion 2>/dev/null 1>/dev/null 0>/dev/null
                    read pause
                else
                    echo ""
                    echo -e "- ${rojo}La carpeta $conexion, Tiene contenido.${borra_colores}"
                    echo -e "- ${rojo}Desmontala antes de borrar..${borra_colores}"
                    read pause
                fi
	else
		echo ""
		echo -e "- ${amarillo}No lo has escrito correctamente o bien no existe.${borra_colores}"
		read pause
	fi;;
	
    80)  clear
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
        echo "|                                                                                                                                             |"
        echo "|                          ███████        ██    ██        ██   ██        ██         ██████         ███████        ██   ██                     |"
        echo "|                          ██             ██    ██        ██  ██         ██        ██              ██              ██ ██                      |"
        echo "|                          ███████        ██    ██        █████          ██        ██   ███        ███████          ███                       |"
        echo "|                               ██        ██    ██        ██  ██         ██        ██    ██             ██         ██ ██                      |"
        echo "|                          ███████         ██████         ██   ██        ██         ██████         ███████        ██   ██                     |"
        echo "|                                                                                                                                             |"
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
        echo -e "-${verde}  Diseñado por sukigsx / Contacto: | sukigsx.mbsistemas@gmail.com     |${borra_colores}                          Para mejor visualizacion, presiona F11.     -"
        echo -e "-${verde}                                   | https://mbsistemas.ddns.net      |${borra_colores}                          Control + C -->> finalizar script.          -"
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
        echo -e "-${verde} Nombre del script --> ocamlfuse.sukigsx.sh ${borra_colores}                                                                                                 -"
        echo "-                                                                                                                                             -"
        echo -e "-${verde} Descripcion.${borra_colores}     Utilidad para sincronizar tu cuenta de google-drive.                                                                       -"
        echo -e "-${verde} Funcionamiento.${borra_colores}  Ver manual de funcionamiento, opcion 90 del menu.                                                                          -"
        echo "-                                                                                                                                             -"
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
        echo "- Dar las gracias al creador del programa............                                                                                         -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        read -p "- Quieres ver la pagina del creador ? (S/N) -->> " correcto;
            if [ $correcto = "S" ] || [ $correcto = "s" ] 2>/dev/null 1>/dev/null 0>/dev/null;
            then
                firefox https://github.com/astrada/google-drive-ocamlfuse;
            else
                echo "";
            fi;;

    90) clear;
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                              AYUDA                                                                          -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                                                                                             -";
        echo "-  1. Instalar y configurar Ocamlfuse:                                                                                                        -"
        echo "-     Instala lo necesario para configurar el programa, solo tienes que seguir los pasos.                                                     -"
        echo "-     Te pedira una carpeta destino para montar la unidad de google-drive en tu rquipo, que se alojara en tu /home/tu_usuario/nombre_carpeta. -"
        echo "-     El mas importante es que le des acceso a tu cuenta de drive de google. Sin el no podra conectar.                                        -"
        echo "-                                                                                                                                             -";
        echo "-  2. Ver conexiones atuales:                                                                                                                 -"
        echo "-     Te mostrara las unidades configuradas en Ocamlfuse.                                                                                     -"
        echo "      Si no hay ninguna, saldra vacio.                                                                                                        -"
        echo "-                                                                                                                                             -";
        echo "-  3. Ver y editar el fichero crontab:                                                                                                        -"
        echo "-     Las unidades configuradas en el Ocamlfuse, solo se montan automaticamente al configurar una conexion,                                   -"
        echo "-       si reinicias tu equipo no se montan solas, entonces el script te da la opcion de montarlas                                            -"
        echo "-       automaticamente con el crontab de tu sistema cada vez que reinicies tu sistema.                                                       -"
        echo "-     Si optas por NO incluirlo en el crontab, tendras que montarlas tu manualmente,                                                          -"
        echo "-       he optado ponerlo asi porque he detectado que en ocasiones, si lo montas automatico y NO hay conexion                                 -"
        echo "-       a internet se relentiza el equipo y tienes de desmontarlas con la opcion 4 del script.                                                -"
        echo "-     Yo personalmente lo dejo automatico en el crontab.                                                                                      -"
        echo "-                                                                                                                                             -";
        echo "-  4. Desmontar unidades:                                                                                                                     -"
        echo "-     Su nombre lo dice, desmonta las unidades que le indiques, ojo solo las desmonta, NO las desistala.                                      -"
        echo "-                                                                                                                                             -";
        echo "-  5. Borrar conexiones:                                                                                                                      -"
        echo "-     Esto desmonta y desistala o borra las conexiones que le indiques que esten configuradas en Ocamfuse.                                    -"
        echo "-                                                                                                                                             -";
        echo "- 80. Ver el repositorio del creador:                                                                                                         -"
        echo "-     Pues lo dicho, te abrira un navegador, conectando a github donde esta el proyecto.                                                      -"
        echo "-                                                                                                                                             -";
        echo "- 90. Manual de funcionamiento.                                                                                                               -"
        echo "-     Lo que estas viendo.                                                                                                                    -"
        echo "-                                                                                                                                             -";
        echo "- 99. Atras / Salir:                                                                                                                          -"
        echo "-     Pues esta claro, Retrocedera en el menu de opciones del script o bien saldra, depende de donde estes en el script.                      -"
        echo "-                                                                                                                                             -";
        echo "-     NOTA. Puedes crear todas las conexiones que quieras para utilizar varios google-drive.                                                  -"
        echo "-     Solo tienes que seleccionar la opcion 1 del script y configurar toadas las conexiones que desees.                                       -"
        echo "-                                                                                                                                             -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo "- Pulsa enter cuando lo tengas claro.                                                                                                         -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        read pause;;       

    99) ctrl_c;;

*)  echo "";
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
    echo -e "- ${amarillo}OPCION NO DISPONIBLE EN EL MENU. Seleccion 1, 2, 3, 4, 5 a 99   Tambien escribiendo ( 90 = ayuda )${borra_colores}                                          -";
    echo "-                                                                                                                                             -";
    echo -e "- ${amarillo}PRESIONA ENTER PARA CONTINUAR ........${borra_colores}                                                                                                      -";
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
    read pause;;
esac
done

