pokemon=$1;

existe=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada); 

if [[ "$existe" == "Not Found" ]]; then 
	echo "No se ha encontrado el pokemon";	
else
	indice=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .id);
	order=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .order);
	name=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .name);
	height=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .height);
	weight=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .weight);
	echo "ID={$id}, name={$name}, weight={$weight}, height={$height}, order={$order}";

fi
