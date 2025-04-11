#!/bin/bash

touch hashes_contraseñas

palabras[0]=rafael
palabras[1]=julieta
palabras[2]=manuel
palabras[3]=lucas
palabras[4]=micaela
palabras[5]=valeria
palabras[6]=nahuel
palabras[7]=gabriela
palabras[8]=jorge
palabras[9]=las
palabras[10]=ideas
palabras[11]=verdes
palabras[12]=incoloras
palabras[13]=duermen
palabras[14]=furiosamente

len=${#palabras[@]}

for ((i=0; i < len; i++ ));
do
    if [[ $1 ==  ${palabras[$i]} ]];
    then
    first_word=$1    
    fi

    if [[ $2 ==  ${palabras[$i]} ]];
    then
    second_word=$2    
    fi
    
    
done

echo $first_word
echo $second_word

if [[ ${#first_word} -gt 0  ]] && [[ ${#second_word} -gt 0  ]] ;
then

    newWord="${first_word} ${second_word}"
    echo $newWord | md5sum > hashes_contraseñas
fi
