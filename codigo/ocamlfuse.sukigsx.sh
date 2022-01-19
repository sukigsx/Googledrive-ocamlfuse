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
figlet -c Gracias por 
figlet -c utilizar mi
figlet -c script
wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz
exit
}

####################################################################


# empieza lo gordo
##verificacion de conexion y tambien de fostware necesario
clear
echo -e ""
echo -e "${verde} Verificando software necesario.${borra_colores}"
echo -e ""
## Vericica conexion a internet
    if ping -c1 google.com &>/dev/null;
    then
        echo -e " [${verde}ok${borra_colores}] Conexion a internet."
        conexion="si" #sabemos si tenemos conexion a internet o no
    else
        echo -e " [${rojo}XX${borra_colores}] Conexion a internet."
        conexion="no" #sabemos si tenemos conexion a internet o no
    fi
    
for paquete in git wmctrl figlet google-drive-ocamlfuse diff #ponemos el fostware a instalar separado por espacios
do
    which $paquete 2>/dev/null 1>/dev/null 0>/dev/null #comprueba si esta el programa llamado programa
    sino=$? #recojemos el 0 o 1 del resultado de which
    contador="1" #ponemos la variable contador a 1
    while [ $sino -gt 0 ] #entra en el bicle si variable programa es 0, no lo ha encontrado which
    do
        if [ $contador = "4" ] || [ $conexion = "no" ] #si el contador es 4 entre en then y sino en else
        then #si entra en then es porque el contador es igual a 4 y no ha podido instalar o no hay conexion a internet
            echo ""
            echo -e " ${amarillo}NO se ha podido instalar ($paquete).${borra_colores}"
            echo -e " ${amarillo}Intentelo usted con la orden:${borra_colores}"
            echo -e " ${rojo}-- sudo apt install $paquete --${borra_colores}"
            echo -e ""
            echo -e " ${rojo}No se puede ejecutar el script.${borra_colores}"
            echo ""
            exit
        else #intenta instalar
            if [ $paquete = "google-drive-ocamlfuse" ]
            then
                echo " Instalando $paquete. Intento $contador/3."
                sudo add-apt-repository -y ppa:alessandro-strada/ppa 2>/dev/null 1>/dev/null 0>/dev/null
                sudo apt install $paquete -y 2>/dev/null 1>/dev/null 0>/dev/null
                let "contador=contador+1" #incrementa la variable contador en 1
                which $paquete 2>/dev/null 1>/dev/null 0>/dev/null #comprueba si esta el programa en tu sistema
                sino=$? ##recojemos el 0 o 1 del resultado de which
            else
                echo " Instalando $paquete. Intento $contador/3."
                sudo apt install $paquete -y 2>/dev/null 1>/dev/null 0>/dev/null
                let "contador=contador+1" #incrementa la variable contador en 1
                which $paquete 2>/dev/null 1>/dev/null 0>/dev/null #comprueba si esta el programa en tu sistema
                sino=$? ##recojemos el 0 o 1 del resultado de which
            fi
        fi
done
    echo -e " [${verde}ok${borra_colores}] $paquete."

done
if [ $conexion = "no" ]
then
    echo -e ""
    echo -e "${rojo} Este script no se puede ejecutar correctamente."
    echo -e " Si NO dispone de conexion a internet.${borra_colores}"
    echo -e ""
    exit
else
    echo -e ""
    echo -e "${verde} Continuamos...${borra_colores}"
    sleep 2
fi


#comprueba actualiczacion del script

repositorio="https://github.com/sukigsx/Googledrive-ocamlfuse.git" #variable de la direccion del repositorio del script
if wget -S --spider $repositorio &>/dev/null; #comprueba que exista el repositorio
then
        if [ -e /usr/bin/$0 ] #comprueba si se ha instalado el script con el deb, comprobando el fichero /usr/bin/nombre_del_script.sh
        then
            ruta="/usr/bin"
            mkdir /tmp/com_update 2>/dev/null 1>/dev/null 0>/dev/null
            git clone $repositorio /tmp/com_update 2>/dev/null 1>/dev/null 0>/dev/null
            diff /tmp/com_update/codigo/$0 $ruta/$0 2>/dev/null 1>/dev/null 0>/dev/null
            if [ $? = "0" ] 2>/dev/null 1>/dev/null 0>/dev/null
            then
                echo -e " [${verde}ok${borra_colores}] script, esta actualizado."
            else
                echo -e " [${rojo}X${borra_colores}] ${amarillo}script NO 1ctualizado, puedes actualizarlo en la opcion ( 0 ).${borra_colores}";sleep 2
            fi
            rm -r /tmp/com_update 2>/dev/null 1>/dev/null 0>/dev/null
        else
            ruta=$(pwd)
            mkdir /tmp/com_update 2>/dev/null 1>/dev/null 0>/dev/null
            git clone $repositorio /tmp/com_update 2>/dev/null 1>/dev/null 0>/dev/null
            diff /tmp/com_update/codigo/$0 $ruta/$0 2>/dev/null 1>/dev/null 0>/dev/null
            if [ $? = "0" ] 2>/dev/null 1>/dev/null 0>/dev/null
            then
                echo -e " [${verde}ok${borra_colores}] script, esta actualizado."
            else
                echo -e " [${rojo}X${borra_colores}] ${amarillo}script NO 2ctualizado, puedes actualizarlo en la opcion ( 0 ).${borra_colores}";sleep 3
            fi
            rm -r /tmp/com_update 2>/dev/null 1>/dev/null 0>/dev/null
        fi
else
        echo ""
        echo -e " ${amarillo}El repositorio (${rojo} $repositorio ${amarillo}), NO esta accesible.${borra_colores}"
        echo -e " ${amarillo}Imposible la comprobacion de actualizaciones del script.${borra_colores}"
        echo ""
fi

echo ""
echo -e " ${verde}Todo el software correcto.${borra_colores}"
sleep 3


while :
do
clear
#maximiza la terminal.
wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
echo -e "${rosa}"; figlet -c sukigsx; echo -e "${borra_colores}"
echo -e "${verde}  Diseñado por sukigsx / Contacto:  sukisx.mbsistemas@gmail.com${borra_colores}"
echo -e "${verde}                                    https://mbsistemas.ddns.net${borra_colores}"
echo ""
echo -e "${verde} Nombre del script --> ocamlfuse.sukigsx.sh ${borra_colores}"
echo ""
echo -e "${verde} Descripcion.${borra_colores}     Utilidad para sincronizar tu cuenta de google-drive."
echo -e "${verde} Funcionamiento.${borra_colores}  Ver manual de funcionamiento, opcion 90 del menu."
echo ""
echo -e "  0. ${azul}Actualizar este script.${borra_colores}"
echo ""
echo -e "  1. ${azul}Configurar/Crear conexiones nuevas.${borra_colores}"
echo -e "  2. ${azul}Ver conexiones actuales.${borra_colores}"
echo ""
echo -e "  3. ${azul}Montar/activar conexiones.${borra_colores}"
echo -e "  4. ${azul}Desmontar/Desactivar conexiones.${borra_colores}"
echo ""
echo -e "  5. ${azul}Ver / editar fichero crontab.${borra_colores}"
echo -e "  6. ${azul}Borrar conexiones.${borra_colores}"
echo -e ""
echo -e " 80. ${azul}Ver el repositorio del creador.${borra_colores}"
echo -e " 90. ${azul}Manual de funcionamiento.${borra_colores}"
echo -e " 99. ${azul}Atras / Salir.${borra_colores}"
echo -e ""
echo -n " Seleccione una opcion del menu -->> "
read opcion
case $opcion in
    
    0) #actualiza el script
        which git 2>/dev/null 1>/dev/null 0>/dev/null #comprueba si esta el programa llamado programa
        git=$? #recojemos el 0 o 1 del resultado de which
        contador="1" #ponemos la variable contador a 1
        while [ $git -gt 0 ] #entra en el bicle si variable programa es 0, no lo ha encontrado which
        do
            if [ $contador = "4" ] #si el contador es 4 entre en then y sino en else
            then #si entra en then es porque el contador es igual a 4 y no ha podido instalar
                echo ""
                echo -e " ${rojo}NO se ha detectado conexion a internet, No se puede ejecutar el script.${borra_colores}"
                echo ""
                exit
        else #intenta instalar
            sudo apt install git -y
            let "contador=contador+1" #incrementa la variable contador en 1
            which git 2>/dev/null 1>/dev/null 0>/dev/null #comprueba si esta el programa en tu sistema
            git=$? ##recojemos el 0 o 1 del resultado de which
        fi
        done
    
    if [ -e /usr/bin/ocamlfuse.sukigsx.sh ] #comprueba si se ha instalado el script con el deb, comprobando el fichero /usr/bin/inicio.ocamlfuse.sh
        then
            ruta="/usr/bin"
            cd /tmp
            mkdir temporal_update
            git clone https://github.com/sukigsx/Googledrive-ocamlfuse.git /tmp/temporal_update
            cd /tmp/temporal_update/codigo/
            sudo chmod +x $ruta/*.sukigsx.sh
            sudo cp -r /tmp/temporal_update/codigo/* $ruta
            sudo rm -r /tmp/temporal_update
            clear
            echo "";
            echo -e "${verde} Script actualizado, tienes que reiniciar el script para ver los cambios.${borra_colores}";
            echo "";
            read -p " Pulsa una tecla para continuar." pause
            ctrl_c;
        else
            ruta=$(pwd)
            cd /tmp
            mkdir temporal_update
            git clone https://github.com/sukigsx/Googledrive-ocamlfuse.git /tmp/temporal_update
            cd /tmp/temporal_update/codigo/
            sudo chmod +x $ruta/*.sukigsx.sh
            sudo cp -r /tmp/temporal_update/codigo/* $ruta
            sudo rm -r /tmp/temporal_update
            clear
            echo "";
            echo -e "${verde} Script actualizado, tienes que reiniciar el script para ver los cambios.${borra_colores}";
            echo "";
            read -p " Pulsa una tecla para continuar." pause
            ctrl_c;
        fi;;
    
    1)  #Configurar/Crear conexiones nuevas
        clear
        echo ""
        echo " Empezamos.....";
        echo ""
        read -p " Introduce el nombre de la carpeta donde sincronizar google drive /home/$(whoami)/ -->> " carpeta_drive;
        echo " La ruta de creaccion de carpeta sera /home/$(whoami)/$carpeta_drive/";
        echo -n " Los datos son correctos ? (s/n) -->> ";
        read sino;
        if [ $sino = "S" ] || [ $sino = "s" ] 2>/dev/null 1>/dev/null 0>/dev/null
        then
            if [ -d /home/$(whoami)/$carpeta_drive ]
            then
                echo -e "${amarillo} Espera... No toques nada.${borra_colores}"
                google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/;
                google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/;
                clear
                echo "";
                echo " Listo ................";
                echo ""
                echo " Datos de Drive estan montados en la carpeta /home/$(whoami)/$carpeta_drive. Abre tu explorador de archivos para verlo."
                echo "";
                echo -e "${amarillo} Para que se monte automaticamente al reiniciar tu ordenador, hay que incluirlo en el Crontab de tu usuario."
                echo " Se montara automaticamente al reiniciar, pero si tu conexion a internet falla, el equipo se te relentizara."
                echo -e " Tendras que parar el servicio manualmente o conectarlo a internet.${borra_colores}"
                echo ""
                read -p " Una vez que sabes esto, Quieres incluirlo en crontab. (s/n) ? " sino
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
                echo -e "${amarillo} Espera... No toques nada.${borra_colores}"
                google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/;
                google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/;
                clear
                echo "";
                echo " Listo ................";
                echo ""
                echo " Datos de Drive estan montados en la carpeta /home/$(whoami)/$carpeta_drive. Abre tu explorador de archivos para verlo."
                echo "";
                echo -e "${amarillo} Para que se monte automaticamente al reiniciar tu ordenador, hay que incluirlo en el Crontab de tu usuario."
                echo " Se montara automaticamente al reiniciar, pero si tu conexion a internet falla, el equipo se te relentizara."
                echo -e " Tendras que parar el servicio manualmente o conectarlo a internet.${borra_colores}"
                echo ""
                read -p " Una vez que sabes esto, Quieres incluirlo en crontab. (s/n) ? " sino
                if [ $sino = "s" ] || [ $sino = "S" ] 2>/dev/null 1>/dev/null 0>/dev/null
                then                
                	(crontab -l 2>/dev/null; echo "#google-drive-ocalfuse, $carpeta_drive  cada reinicio.") | crontab -
                	(crontab -l 2>/dev/null; echo "@reboot google-drive-ocamlfuse -label $carpeta_drive /home/$(whoami)/$carpeta_drive/") | crontab -
                	echo ""
                	echo " Contenido metido en crontab"
                	echo ""
                	echo " Puedes ver o modificar crontab con la siguiente orden:"
                	echo " crontab -e o bien desde el menu del script. Opcion 5."
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
            echo "";
            echo " OK.... Todo cancelado.....Empezamos de nuevo......";
            echo " Repite con el paso 1. Pulsa enter para continuar.";
            echo "";
            read pause;
    fi;;

	2)  #Ver conexiones actuales
        clear
        echo ""
        echo " Listado de unidades montadas.";
        echo -e "${verde}";
        ls $HOME/.gdfuse 2>/dev/null 0>/dev/null
        echo -e "${borra_colores}"
        read -p " Pulsa una tecla para continuar." pause;;
        
    3)  #Montar acrivar conexion
        clear
        echo ""
        echo " Listado de unidades montadas.";
        echo -e "${verde}";
        ls $HOME/.gdfuse 2>/dev/null 0>/dev/null
        echo -e "${borra_colores}"
        read -p " Dime el nombre de conexion para activar -->> " conexion
        if [ -d /home/$(whoami)/.gdfuse/$conexion ] && [ $conexion  ]
        then
            google-drive-ocamlfuse -label $conexion /home/$(whoami)/$conexion/
            if [ $? = "0" ] 2>/dev/null 1>/dev/null 0>/dev/null
            then
                echo ""
                echo -e " ${verde}La conexion $conexion, montada con exito.$conexion.${borra_colores}"
                read -p " Pulsa una tecla para continuar." pause
            else
                echo ""
                echo -e " ${rojo}La conexion $conexion, No se ha podido montar.${borra_colores}"
                read -p " Pulsa una tecla para continuar." pause
            fi
        else
        	echo ""
		echo -e " ${amarillo}No lo has escrito correctamente o bien no existe.${borra_colores}"
        	read -p " Pulsa una tecla para continuar." pause
        fi;;
        
    4)  #Desmontar/Desactivar conexion
        clear
        echo ""
        echo " Listado de unidades montadas.";
        echo -e "${verde}";
        ls $HOME/.gdfuse 2>/dev/null 0>/dev/null
        echo -e "${borra_colores}"
        read -p " Dime el nombre de conexion a desmontar -->> " conexion
        if [ -d /home/$(whoami)/.gdfuse/$conexion ] && [ $conexion  ]
        then
		fusermount -u $conexion 2>/dev/null 1>/dev/null 0>/dev/null
		if [ $? = "0" ] 2>/dev/null 1>/dev/null 0>/dev/null
		then
			echo ""
			echo -e " ${verde}Desmontada la conexion $conexion.${borra_colores}"
			read -p " Pulsa una tecla para continuar." pause
		else
			echo ""
			echo -e " ${rojo}No ha sido posible desmontar $conexion.${borra_colores}"
			read -p " Pulsa una tecla para continuar." pause
		fi

        else
        	echo ""
            echo -e " ${amarillo}No lo has escrito correctamente o bien no existe.${borra_colores}"
        	read -p " Pulsa una tecla para continuar." pause
        fi;;
      


    5)  #ver editar crontab
        clear
        crontab -e;;
        


    6)	#Borrar conexiones
        clear
        echo "";
        echo " Listado de conexiones para borrar.";
        echo -e "${rojo} Se borrara tambien la carpeta de montaje.${borra_colores}";
        echo -e "${verde}";
        ls $HOME/.gdfuse 2>/dev/null 0>/dev/null
        echo -e "${borra_colores}"
        read -p " Dime el nombre de conexion a borrar -->> " conexion
        if [ -d /home/$(whoami)/.gdfuse/$conexion ] && [ $conexion  ]
        then
                if [ /home/$(whoami)/$conexion/* == "/home/$(whoami)/$conexion/*"  ] 2>/dev/null 1>/dev/null 0>/dev/null
                then
                    echo ""
                    echo -e " ${verde}La carpeta $conexion NO tiene contenido.${borra_colores}"
                    echo -e " ${verde}Se procede a la eliminacion.${borra_colores}"
                    rm -r /home/$(whoami)/$conexion 2>/dev/null 1>/dev/null 0>/dev/null
                    rm -r /home/$(whoami)/.gdfuse/$conexion 2>/dev/null 1>/dev/null 0>/dev/null
                    read -p " Pulsa una tecla para continuar." pause
                else
                    echo ""
                    echo -e " ${rojo}La carpeta $conexion, Tiene contenido.${borra_colores}"
                    echo -e " ${rojo}Desmontala antes de borrar..${borra_colores}"
                    read -p " Pulsa una tecla para continuar." pause
                fi
	else
		echo ""
		echo -e " ${amarillo}No lo has escrito correctamente o bien no existe.${borra_colores}"
		read -p " Pulsa una tecla para continuar." pause
	fi;;
	
    80)  clear
        echo ""
        echo -e "${rosa}"; figlet -c sukigsx; echo -e "${borra_colores}"
        echo ""
        echo " Dar las gracias al creador del programa............";
        echo ""
        echo " Proyecto > https://github.com/astrada/google-drive-ocamlfuse"
        echo ""
        read -p " Quieres ver la pagina del creador ? (s/n) -->> " correcto;
            if [ $correcto = "S" ] || [ $correcto = "s" ] 2>/dev/null 1>/dev/null 0>/dev/null;
            then
                firefox https://github.com/astrada/google-drive-ocamlfuse;
            else
                echo "";
            fi;;

    90) clear;
        echo "";
        echo -e "${verde} Explicacion de los menus :${borra_colores}";
        echo -e ""
        echo -e "  0. ${azul}Actualizacion del script.${borra_colores}"
        echo -e "";
        echo -e "  1. ${azul}Instalar y configurar Ocamlfuse:"
        echo -e "     ${turquesa}Instala lo necesario para configurar el programa, solo tienes que seguir los pasos."
        echo -e "     Te pedira una carpeta destino para montar la unidad de google-drive en tu rquipo, que se alojara en tu /home/tu_usuario/nombre_carpeta."
        echo -e "     El mas importante es que le des acceso a tu cuenta de drive de google. Sin el no podra conectar.${borra_colores}"
        echo -e "";
        echo -e "  2. ${azul}Ver conexiones atuales:"
        echo -e "     ${turquesa}Te mostrara las unidades configuradas en Ocamlfuse."
        echo -e "     Si no hay ninguna, saldra vacio.${borra_colores}"
        echo -e "";
        echo -e "  3. ${azul}Ver y editar el fichero crontab:"
        echo -e "     ${turquesa}Las unidades configuradas en el Ocamlfuse, solo se montan automaticamente al configurar una conexion,"
        echo -e "       si reinicias tu equipo no se montan solas, entonces el script te da la opcion de montarlas"
        echo -e "       automaticamente con el crontab de tu sistema cada vez que reinicies tu sistema."
        echo -e "     Si optas por NO incluirlo en el crontab, tendras que montarlas tu manualmente,"
        echo -e "       he optado ponerlo asi porque he detectado que en ocasiones, si lo montas automatico y NO hay conexion"
        echo -e "       a internet se relentiza el equipo y tienes de desmontarlas con la opcion 4 del script."
        echo -e "     Yo personalmente lo dejo automatico en el crontab.${borra_colores}"
        echo -e "";
        echo -e "  4. ${azul}Desmontar unidades:"
        echo -e "     ${turquesa}Su nombre lo dice, desmonta las unidades que le indiques, ojo solo las desmonta, NO las desistala.${borra_colores}"
        echo -e "";
        echo -e "  5. ${azul}Borrar conexiones:"
        echo -e "     ${turquesa}Esto desmonta y desistala o borra las conexiones que le indiques que esten configuradas en Ocamfuse.${borra_colores}"
        echo -e "";
        echo -e " 80. ${azul}Ver el repositorio del creador:"
        echo -e "     ${turquesa}Pues lo dicho, te abrira un navegador, conectando a github donde esta el proyecto.${borra_colores}"
        echo -e "";
        echo -e " 90. ${azul}Manual de funcionamiento."
        echo -e "     ${turquesa}Lo que estas viendo.${borra_colores}"
        echo -e "";
        echo -e " 99. ${azul}Atras / Salir:"
        echo -e "     ${turquesa}Pues esta claro, Retrocedera en el menu de opciones del script o bien saldra, depende de donde estes en el script."
        echo -e "";
        echo -e "     ${amarillo}NOTA.${turquesa} Puedes crear todas las conexiones que quieras para utilizar varios google-drive."
        echo -e "     Solo tienes que seleccionar la opcion 1 del script y configurar toadas las conexiones que desees.${borra_colores}"
        echo -e "";
        echo -e " Pulsa enter cuando lo tengas claro.";
        echo -e "";
        read pause;;       

    99) ctrl_c;;

*)  echo "";
    echo "";
    echo -e " ${amarillo}OPCION NO DISPONIBLE EN EL MENU. Seleccion 1, 2, 3, 4, 5 a 99   Tambien escribiendo ( 90 = ayuda )${borra_colores}";
    echo "";
    echo -e " ${amarillo}PRESIONA ENTER PARA CONTINUAR ........${borra_colores}"
    echo ""
    read pause;;
esac
done

