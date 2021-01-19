sudo systemctl unmask hostapd
sudo systemctl enable hostapd
sudo rm /etc/dhcpcd.conf
sudo mv dhcpcd.conf /etc/dhcpcd.conf
sudo rm -fr /etc/sysctl.d/routed-ap.conf
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo netfilter-persistent save
sudo rm -fr /etc/dnsmasq.conf
sudo mv dnsmasq.conf /etc/dnsmasq.conf
sudo rfkill unblock wlan
sudo mv hostapd.conf /etc/hostapd/hostapd.conf
sudo rm -fr /etc/rc.local
sudo mv rc.local /etc/rc.local
sudo rm -fr /etc/samba/smb.conf
sudo mv smb.config /etc/samba/smb.conf
sudo systemctl reboot
