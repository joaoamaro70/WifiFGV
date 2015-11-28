#!/bin/sh

### https://github.com/joaoamaro70
### 26 de outubro de 2015
### Superando instabilidade rede FGV

while :
	do
		if ! ping -c 1 google.com ; then

			echo "Reiniciando wiriless"
			iwconfig wlan0 txpower off
			sleep 4
			iwconfig wlan0 txpower auto
			echo "Wiriless Ativo"
		else
		
			echo
			echo "Funcionando"
			date +"%T"
		fi
		sleep 10
	done
exit
