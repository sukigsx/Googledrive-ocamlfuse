---------
## Google-drive-ocamlfuse
* Script desarrollado en bash
*********************************************
* Diseñado por SUKIGSX
* Contacto: sukigsx.mbsistemas@gmail.com
*********************************************

Este script esta pensado para ayudarte a la configuracion y gestion de Ocamlfuse.
Con el podras gestionar tus conexion de Google drive de una forma sencilla.

Sus opciones, son las siguientes:

- Instalar/Configurar/Crear conexiones nuevas.
- Ver conexiones actuales.
- Montar/Activar conexiones.
- Desmontar/Desactivar conexiones.
- Ver/Editar el fichero de Crontab.
- Borrar conexiones.
- [Ver el repositorio del creador.](https://github.com/astrada/google-drive-ocamlfuse)"**Astrada**" de github
- Manual de funcionamiento.

**¡¡ Todo esto sin utilizar ninguna linea de codigo !!**
### INSTALACION.

#### Descargar e instalar el paquete DEB.
- [Descargar el paque DEB](https://github.com/sukigsx/Googledrive-ocamlfuse/raw/main/Googledrive-ocamlfuse.deb). Y lo puedes instalar con tu forma habitual.

- Instalar paquete DEB desde linea de comando en la terminal,lo descarga, lo instala y despues borra el paquete DEB.

      wget https://github.com/sukigsx/Googledrive-ocamlfuse/raw/main/Googledrive-ocamlfuse.deb; sudo dpkg -i Googledrive-ocamlfuse.deb; rm Googledrive-ocamlfuse.deb
  
 - Clonar el repositorio, desde la terminal. Dar permisos de ejecucion a todos los ficheros.

       git clone https://github.com/sukigsx/Googledrive-ocamlfuse.git

**Nota**. Aconsejo instalar el paquete deb, porque así podrás tener en tu menú de aplicaciones el script con su icono y lo podrás lanzar de forma gráfica sin necesidad de abrir el terminal, además crea una función en el bashrc que al abrir el terminal y escribiendo (scripts), te lista todos mis scripts que tengas instalados en tu sistema que hayas instalado con el paquete deb. Cuando lo desístalas, te pregunta si lo quieres eliminar.

#### Desistalar el paquete deb, desde el terminal.
     sudo dpkg -r googledrive-ocamlfuse

### Forma de ejecucion.

- Si has clonado el repositorio y con permisos de ejecucion posicionandote dentro de la carpeta codigo.

      ./Googledrive-ocamlfuse.sh

- Si has instalado el paquete. Lo encontraras en el lanzador.