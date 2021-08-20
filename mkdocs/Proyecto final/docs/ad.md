# **Implementar un dominio en Active Directory**

----------------------------

Comenzaremos con el primer tópico a realizar, ya teniendo nuestro **Windows server 2016** arriba, haciendo uso de Vmware, accederemos al server manager, haremos click en **ADD ROLES AND FEATURES***

![ad1](img/ad_1.png)

Ya abierto el wizard, daremos click en next 3 veces hasta llegar a la sección de **SERVER SELECTION**, esto lo haremos ya que las opciones que estamos volando la dejaremos por default. Estando en la seccion de Server Roles marcaremos el rol de **ACTIVE DIRECTORY DOMAIN SERVICES**.

![ad2](img/ad2.png)

Seleccionado el rol nos aparecerá otra ventana donde daremos click en **ADD FEATURES.**

![ad3](img/ad3.png)

En la sección de **FEATURES** dejamos todo por default y damos click en next.

![ad4](img/ad4.png)

Ya estando en la sección de **CONFIRMATION** marcamos la casilla de **RESTART** para que reinicie el equipo en caso de que sea necesario, hecho esto hacemos click en **INSTALL**.

![ad5](img/ad5.png)

Ahora vamos a esperar que se complete la instalación.

![ad6](img/ad6.png)

Terminada la instalación vamos a dar click en **PROMOTE THIS SERVER TO A DOMAIN CONTROLLER**

![ad7](img/ad7.png)

Hecho click en la opción anterior se nos abrirá una venta para promover nuestro servidor como controlador de dominio, como no tenemos ningún forest configurado seleccionaremos la opcion **ADD A NEW FOREST**, y en la seccion **ROOT DOMAIN NAME** escribiremos el nombre de dominio que queremos tener.

![ad8](img/ad8.png)

En el siguiente paso vamos a indicar la password para el modo de restauración.

![ad9](img/ad9.png)

En la parte de DNS OPTIONS la dejaremos por default.

![ad10](img/ad10.png)

Ya en **ADDITIONAL OPTIONS** lo dejaremos por default igualmente y daremos click en next.

![ad11](img/ad11.png)

Las demás opciones la dejaremos por default, por lo tanto daremos click en next hasta llegar a la sección de Prerequisites check. Si tenemos todo bien podemos dar click en **Install.**

![ad12](img/ad12.png)

Terminada la intalación nuestro servidor procederá a reiniciarse por lo tanto esperamos a que se complete este proceso y veremos que nuestro AD se ha instalado correctamente.

![ad13](img/ad13.png)

