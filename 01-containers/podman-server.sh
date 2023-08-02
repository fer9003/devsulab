cat /etc/os-release

podman --version && podman-compose --version
buildah --version

#Ejecucion de contenedor
 podman run -d alpine sleep 1d
 podman ps
 ps aux | grep sleep


# Ejercicio
sudo su
echo mypassword123 > /tmp/secret.txt
chmod 600 /tmp/secret.txt
ls -l /tmp/secret.txt
cat /tmp/secret.txt
exit

cat /tmp/secret.txt

podman run -v /tmp:/tmp -it alpine sh
cat /tmp/secret.txt
whoami
exit