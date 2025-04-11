#!/bin/bash

preguntas[0]='Cómo se crea un directorio y se logra que el shell trabaje en el mismo'
preguntas[1]='Si tengo un archivo y quiero hacer una copia del mismo, ¿cómo hago?'
preguntas[2]='Si tengo un archivo que ya no quiero conservar, ¿cómo lo elimino?'
preguntas[3]='¿Puedo hacer que al ejecutar un programa su entrada estándar se lea de un archivo?'
preguntas[4]='¿Cómo se ejecuta un programa redirigiendo a un archivo su salida estándar?'
preguntas[5]='¿De qué manera se puede conectar la salida de un programa con la entrada de otro?'

respuestas[0]='Un directorio se crea con mkdir <name_directorio>. Para trabajar sobre ese directorio se usa: cd  <name_directorio>'
respuestas[1]='cp test1 test2 Esto copia el archivo test1 en el nuevo archivo test2'
respuestas[2]='rm test1 // Si quiero forzar que se borre el archivo voy a usar: rm -f test1 '
respuestas[3]='Si. Puedo hacer que su entrada estándar se lea de un archivo. Se puede usar un pipe para esto.  Por ejemplo:  cat data.txt | md5sum > hashes_contraseñas esto hace que se md5sum lea de un archivo. '
respuestas[4]='Para redirigir su salida estándar a un archivo hay que usar > echo hola | md5sum > hashes_contraseñas En este ejemplo, se pasa como entrada a md5sum “hola” y se dirige el hash qie  devuelve a hashes_contraseñas.'
respuestas[5]='Esto se puede lograr usando pipelines “ | “ -> Una pipeline hace que el stdout de un archivo se pase al stdin de otro. Un ejemplo seria este: cat test2 | grep hola El stdout de test2 se pasa como stdin del comando grep.'



len=${#preguntas[@]}

echo "Bienvenido A las Huergo Questions "

for ((i=0; i < len; i++ ));
do
    echo -n $i") "  | tr "0-9" "a-f"
    echo ${preguntas[$i]}
done

read choice
position=$(echo $choice | tr "a-f" "0-9")

case $position in
    ''|*[!0-9]*) exit;;
    *) echo;;
esac

echo ${respuestas[$position]} 