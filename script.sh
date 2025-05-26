#! /bin/bash
#Faceti un script de shell ce citeste linie cu linie un fisier cu nume de utilizatori si pentru fiecare utilizator afiseazã grupurile in care acesta se afla.

cat utilizatori.txt | while read utilizator; do 
	if [ -z $utilizator ]; then 
		echo "Rand gol!" 
		continue
	fi
	if ! id Sutilizator &> /dev/null; then
		echo "Utilizatorul nu exista!"
		continue
	fi
	echo "Utilizatorul $utilizator este in grupurile: "
	groups $utilizator
done
