 #Revisar la version de la distro
 cat /etc/os-release

#Docker
systemctl status docker 
docker --version
cat /etc/group

#Ejecucion de contenedor
 docker run -d alpine sleep 1d
 docker ps
 ps aux | grep sleep
 
# Ejercicio
sudo su
echo mypassword123 > /tmp/secret.txt
chmod 600 /tmp/secret.txt
ls -l /tmp/secret.txt
cat /tmp/secret.txt
exit

cat /tmp/secret.txt

docker run -v /tmp:/tmp -it alpine sh
cat /tmp/secret.txt
whoami
exit

# UID y GID
sudo vim /etc/docker/daemon.json
_________________________________
{
    "userns-remap" : "default"
}
__________________________________
sudo systemctl restart docker
cat /etc/subuid
docker run -v /tmp:/tmp -it alpine sh
cat /tmp/secret.txt
exit
