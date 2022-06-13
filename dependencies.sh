#!/bin/bash

#VARIABLES

#Colores
rojo="\e[1;31m"
blanco="\e[0m"

#Actualización de paquetes
sudo apt update
sudo apt upgrade

#Instalación de paquetes
echo -e "$rojo Istalación de paquetes$blanco"
sleep 2
apt install net-tools
apt install nmap
apt install tree
apt install netcat
echo -e "$rojo Instalación de Wireshark$blanco"
sleep 3
apt install wireshark
echo -e "$rojo Instalación de Metasploit Framework$blanco"
sleep 3
apt install ruby ruby-dev build-essential zlib1g zlib1g-dev libpq-dev libpcap-dev libsqlite3-dev
cd /tmp
git clone https://github.com/rapid7/metasploit-framework
cd metasploit-framwork
apt install bundler
apt install gem
bundle install
echo "En caso de que de error al ejecutar la consola, ejecutar fix.sh"
echo "#!/bin/bash" >> ~/fix.sh
echo "sed -i '13,15 {s/^/#/}' /var/lib/gems/3.0.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/encryption_algorithm/functionable.rb" >> ~/fix.sh
echo "sed -i '14 {s/^/#/}' /var/lib/gems/3.0.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp256.rb" >> ~/fix.sh
echo "sed -i '14 {s/^/#/}' /var/lib/gems/3.0.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp384.rb" >> ~/fix.sh
echo "sed -i '14 {s/^/#/}' /var/lib/gems/3.0.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp521.rb" >> ~/fix.sh

echo "alias msfconsole='bash /tmp/metasploit-framework/msfconsole'" >> ~/.bash_aliases
source ~/.bash_aliases 

