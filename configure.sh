sudo systemctl unmask hostapd
sudo systemctl enable hostapd
sudo rm /etc/dhcpcd.conf
sudo mv dhcpd.conf /etc/dhcpd.conf
sudo rm -fr /etc/sysctl.d/routed-ap.conf
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo netfilter-persistent save
sudo rm -fr /etc/dnsmasq.conf
sudo mv dnsmasq.conf /etc/dnsmasq.conf
sudo rfkill unblock wlan
sudo mv hostapd.conf /etc/hostapd/hostapd.conf
sudo systemctl reboot