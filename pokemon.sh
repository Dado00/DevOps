pokemon=$1;

existe=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada); 

if [[ "$existe" == "Not Found" ]]; then 
	echo "No se ha encontrado el pokemon";	
else
	clave=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .id);
	numero=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .order);
	nombre=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .name);
	tamano=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .height);
	peso=$(curl https://pokeapi.co/api/v2/pokemon/$pokemonEntrada | jq .weight);
	echo "ID={$clave}, name={$nombre}, weight={$peso}, height={$tamano}, order={$numero}";

fi
