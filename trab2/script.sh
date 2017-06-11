#!/bin/bash

op=5
while [ $op != 0 ]
do
echo "Escolha uma opcao:"
echo "1.Listar Conteúdo da pasta atual"
echo "2.Ver conteúdo de um arquivo"
echo "3.Testar se uma URL está no ar"
echo "0.Sair"

read op

if [ $op -eq 1 ]; then
	clear
	ls
fi

if [ $op -eq 2 ]; then
	clear
	echo "informe o caminho do arquivo: "
	read arq
	cat $arq
fi

if [ $op -eq 3 ]; then
	clear
	echo "informe a url: "	
	read url
	ping -q -c 5 $url
	if [ $? -eq 0 ]; then
		
		echo "a URL $URL está no ar"
		echo " "
		echo " "
	
	else
		echo "a URL $URL não está no ar"
		echo " "
		echo " "
	fi 
fi


done
