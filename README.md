#### To detect all sensors on your motherboard with lm-sensors do this steps:
###### (Tried on Gigabyte x370, but also works on B250/Z370/B450M and on ASUS motherboards | [arch wiki](https://wiki.archlinux.org/index.php/Lm_sensors#Gigabyte_B250/Z370/B450M_motherboards "arch wiki"))
###### (information from arch wiki and [there](https://askubuntu.com/questions/1164206/lm-sensors-and-amd-ryzen-x570-chipset "there"))
1. `sudo vim /etc/default/grub` or open it with  your editor
2. find this line  `GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"` and add to it this
`acpi_enforce_resources=lax` 
 it will looks like this now `GRUB_CMDLINE_LINUX_DEFAULT="quiet splash acpi_enforce_resources=lax"`
3.  save and exit your editor, then run `sudo update-grub`
4. reboot your pc
5. now run `git clone https://github.com/h4x0rlol/archlinux-ryzen-setup.git`
6. `cd archlinux-ryzen-setup`
7. run `./setup.sh` (press enter and type yes when it asks)
8. now run `sudo modprobe it87 force_id=0x8686` or `sudo modprobe it87 force_id=0x8628` ([8628](https://github.com/a1wong/it87/issues/1 "8628"))
9. now run `sudo sensors-detect` and press enter everytime
10. `sensors` and `zenmonitor` now should show actual temps and voltage
