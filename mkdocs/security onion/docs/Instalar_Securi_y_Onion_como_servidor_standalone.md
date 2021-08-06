

# **Instalar Security Onion como servidor standalone**

**ISO:** [Click aquí para descargar](https://download.securityonion.net/file/Security-Onion-16/securityonion-16.04.7.3.iso) 

En esta ocasion estaremos usando Virtualbox para ralizar este laboratorio ( para variar).

## **Configuración de la máquina virtual**

Para poder completar este lab de la manera más correcta posible necesitaremos los siguientes requerimientos.

- 30 GB.
- 8 RAM.
- 2 CORES.
- 2 adaptadores de red (En bridge).

Estos son los requerimientos que utilicé para preparar mi laboratorio.

![so1](img/so_1.png)

## **Iniciando máquina**

Ya iniciada la máquina seleccionamos la primera opción de booteo.

![so2](img/so_2.png)

Esperamos que suba la máquina, y nos quedará algo como esto.

![so_3](img/so_3.png)



Lo que sigue es hacer **doble click** en el apartado de Install **SecurityOnion 16.04**

![so4](img/so_4.png)



Vamos a seguir con la siguiente paso dando click en **next** hasta llegar a la imagen que se muestra a continuación. Seleccionaremos la primera opción para formatear y comenzar la instalación de Security Onion.

![so5](img/so_5.png)

![so6](img/so_6.png)

Llenaremos los siguientes apartados Según el nombre que quieran poner, y la password.

![so6](img/so_6.png)

En este paso procedemos a poner los datos del user para acceder a Security Onion.

![so7](img/so_7.png)

Solo nos toca esperar a que termine el proceso mostrado en la imagen.

!!! note
    Posterior a este paso nuestra máquina será reiniciada.

![so8](img/so_8.png)

Cuando termine toda la instalación nos mostrará una ventana como la siguiente. Daremos click en **Restart now.**

![so9](img/so_9.png)



Ya iniciado sección nos logueamos con el user que indicamos anteriormente ahora nos aparecerá un ícono con el nombre de **setup** daremos click en el.

![so10](img/so_10.png)

 

Lo primero que veremos son todos los servicios que se instalaran en este proceso, daremos click en **Yes, Continue!**

![so_11](img/so_11.png)

La siguiente ventana es para para la configuración de las interfaces, tenemos dos opciones configurarlas después y configurarlas ahora, en nuestro caso daremos click en **Yes, configure /etc/network/interfaces**

![so12](img/so_12.png)

En el siguiente paso seleccionaremos la interfaz de management en nuestro caso será la primera.

![so13](img/so_13.png)

!!! note
     Recordar que tengo dos interfaces las dos en bridge.
     
Ahora seguimos con la configuración de la IP, podemos fijarla tanto estatica, como obtenerla por DHCP, en mi caso escogí DHCP.

La siguiente ventana después de esto, es para configurar la interfaz de sniffing, como la queremos configurar ahora daremos click en **YES.**

![so14](img/so_14.png)

![so15](img/so_15.png)

Ahora la ventana que va después de esto simplemente nos muestra un review de lo que hemos hecho con las interfaces.

![so16](img/so_16.png)



La ventana que sigue simplemente es de reboot daremos click en **YES.**

Ya reiniciado nuestro servidor, procedemos hacer click nuevamente en el ícono de **setup.**

![so10.2](img/so_10.png)

Dado click en el ícono y saltando los pasos que ya hemos hecho, veremos una ventana que nos pondrán a seleccionar el modo en el cual queremos nuestro servidor, en nuestro caso **evaluation mode,** si leemos la información de arriba menciona que este modo es bueno para standalone Vms, y justo esto se adapta a los requerimientos que ha indicado el profesor.

![so17](img/so_17.png)

En el siguiente paso seleccionaremos la interfaz de monitoreo, en este caso viene siendo la segunda.

![so18](img/so_18.png)

Ahora vamos a designar un user y el password para loguearnos en las plataformas que se instalarán.

![so19](img/so_19.png)

![so20](img/so_20.png)

Pasado este paso nos encontraremos con una ventana de confirmación de los cambios que se harán daremos click en **YES.**

![so21](img/so_21.png)

![so22](img/so_22.png)

Ya terminado el setup veremos como ventana final lo siguiente.

![so23](img/so_23.png)

## **Tópicos completados**

- [x] Instalar Security Onion como servidor standalone.
- [x] Configurar IDS.
- [x] Configurar Suricata.

- [x] Configurar Kibana para la visualización de los logs de Suricata.
