#! /bin/bash

for cursant in vvonenciuc bob alice; do
	echo "Nume cursant: $cursant are nota 10"  
done

for index in {1..5}; do
	echo "Indexul curent este: $index"
done

user_corect="admin"
parola_corecta="1234"

for index in {1..3}; do
        while [ -z "$username" ];do
                read -p "Username: " username
        done
        read -p "Parola: " parola
        echo "Usererul a introdus username $username si parola: $parola"
        if [[ $username != $user_corect || $parola != $parola_corecta ]]; then
                echo "Gresit. Mai ai  $((3 - index))"
        else
                echo "Esti logat"
                continue
        fi
done
