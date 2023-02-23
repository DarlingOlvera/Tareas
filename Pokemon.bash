#!/bin/bash
#Script de bash que consulte informacion de un pokemon

# $1 variable con el valor del primer parametro  o en este caso unico parametro pasado
# la flag -n regresa true si no se pasa ningun parametro
if [[ ! -n $1 ]];
then 
    echo "No parameter passed."
else
    echo "Parameter passed = $1"
    echo "Id: $(curl -s "https://pokeapi.co/api/v2/pokemon/$1"|jq .id)"
    echo "Name: $(curl -s "https://pokeapi.co/api/v2/pokemon/$1"|jq .name)"
    echo "Weight: $(curl -s "https://pokeapi.co/api/v2/pokemon/$1"|jq .weight)"
    echo "Height: $(curl -s "https://pokeapi.co/api/v2/pokemon/$1"|jq .height)"
    echo "Order: $(curl -s "https://pokeapi.co/api/v2/pokemon/$1"|jq .order)"
    
fi

