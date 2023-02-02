poke=$1;

validacion=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada); 

if [[ "$validacion" == "Not Found" ]]; then 


	echo "No se ha encontrado el pokemon";
	
else

	clave=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .id);

	nombre=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .name);

	peso=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .weight);

	altura=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .height);

	numero=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .order);
	
	
	echo "ID={$clave}, name={$nombre}, weight={$peso}, height={$altura}, order={$numero}";

fi
