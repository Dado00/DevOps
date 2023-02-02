poke=$1;

validacion=$(curl https://pokeapi.co/api/v2/pokemon/$poke); 

if [[ "$validacion" == "Not Found" ]]; then 
	echo "No se ha encontrado el pokemon";
	
else

	nombre=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .name);
        clave=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .id);
        numero=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .order);
	altura=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .height);
        peso=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .weight);

	echo "ID={$clave}, name={$nombre}, weight={$peso}, height={$altura}, order={$numero}";

fi
