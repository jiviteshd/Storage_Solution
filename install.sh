sudo apt-get update
sudo apt-get upgrade
sudo apt install hostapd
sudo apt install dnsmasq
sudo DEBIAN_FRONTEND=noninteractive apt install -y netfilter-persistent iptables-persistent
sudo apt-get install samba samba-common-bin
bash configure.sh
