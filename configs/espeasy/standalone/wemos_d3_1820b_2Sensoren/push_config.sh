#! /bin/bash
echo "Dieses Skript schiebt die aktuelle Configuration auf den ESP"
echo "Bitte die IP übergeben"
echo
echo "Sende Icon und Openandhome-Dashboard"
curl -v -F Upload=@openandhome.esp http://$1/upload
curl -v -F Upload=@temperature.png http://$1/upload
curl -v -F Upload=@temperature1.png http://$1/upload
curl -v -F Upload=@openandhome_92.png http://$1/upload
echo "Sende Config"
curl -v -F Upload=@config.dat http://$1/upload
echo 
echo "Bitte daran denken noch die Adresse des Sensors unter device auszuwählen"
