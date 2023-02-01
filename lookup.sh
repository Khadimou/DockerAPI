#!/bin/bash

let "cnt = 0"
let "fichier = 0"
let "dossier = 0"
for i in `ls`
do
	if [ -x $i ]
	then 
		echo "le fichier $i est executable"
		let "cnt = cnt + 1"
		echo $i >> list_exec.txt
	elif [ -d $i ]; then
		echo "$i est un dossier"
		let "dossier = dossier + 1"
	else
		echo "$i est un fichier non exécutable"
		let "fichier = fichier + 1"
	fi
done
echo "il y a $cnt fichiers éxecutables, $dossier dossiers et $fichier fichiers non exécutables" >> list_exec.txt
