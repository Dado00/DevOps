pokemonEntrada=$1;

validacion=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada); 

if [[ "$validacion" == "Not Found" || "$validacion" == "null" ]]; then 



	echo "Ese pokemon no existe";
	
else

	indice=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .id);

	name=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .name);

	weight=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .weight);

	height=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .height);

	order=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .order);

	echo "ID={$indice}, name={$name}, weight={$weight}, height={$height}, order={$order}";

fi
