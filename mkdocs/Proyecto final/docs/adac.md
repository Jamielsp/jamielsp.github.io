# **Habilitar Active Directory Certificate Authority**

Como primer paso vamos a  ejecutar powershell como administrador, y verificaremos si el rol y sus componentes están disponibles para la instalación y si están instalados.

```powershell
Get-WindowsFeature | where {$_.name -like "adcs*" -or $_.name -like "ad-c*"}
```

![ad14](img/ad14.png)

En mi caso no tengo el rol instalado, por lo tanto vamos a instalar el servicio con el siguiente comando:

```powershell
Install-WindowsFeature adcs-cert-authority –IncludeManagementTools 
```

![ad15](img/ad15.png)

Terminado este proceso nos vamos a dirigir a nuestro **SERVER MANAGER** veremos la sección de notificaciones   con un warning, si damos click en él veremos que tiene que ver con nuestro AD AC, daremos click en **CONFIGURE ACTIVE DIRECTORY CERTIFICATE SERVICES **

![ad16](img/ad16.png)

Abierta la ventana de configuración, esperamos que cargue y cuando se encuentre lista daremos click en next.

![ad17](img/ad17.png)

Ahora vamos a seleccionar el roles que queremos instalar de este servicio. 

![ad18](img/ad18.png)

Como siguiente paso el tipo de setup nuestra será Standalone CA, dabido a que solo es con motivos prácticos y de estudios.

![ad19](img/ad19.png)

El tipo de CA lo pondremos como **ROOT CA**

![ad20](img/ad20.png)

Pasaremos a generar nuestra clave privada, ya que no tenemos ninguna dejamos seleccionada la primera opción para crear una nueva. seleccionada la opción damos click en next.

![ad21](img/ad21.png)

Vamos a configurar la criptografía de la clave, vamos a dejar todo por defecto en este caso, dejando claro que estos son los parámetros de seguridad mínimos recomendados para las claves de cifrado.

![ad22](img/ad22.png)

Ya en el siguiente paso tendremos que especificar el nombre del CA, windows server nos proporciona esta info automáticamente así que no tendremos que pasar ningún parámetro y dejamos todo como está.

![ad23](img/ad23.png)

Hecho click en next, en el siguiente paso tendremos que especificar el tiempo de expiración del certificado, en nuestro caso lo dejaremos por default que son 5 años.

![ad24](img/ad24.png)

Ya como último paso verificamos que los datos son los que deseamos, si es así damos click en configure.

![ad25](img/ad25.png)

![ad26](img/ad26.png)

!!! info
	En esta sección se cumplió con: **Generar un certificado utilizando ADCA.**

