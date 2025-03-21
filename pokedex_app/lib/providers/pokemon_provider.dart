// import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokedex_app/widgets/pokemon.dart';

class PokemonProvider {


  Future<Pokemon> getPokemons() async {

    final url = Uri.parse('https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
    
    try {
      final response = await http.get(url);
      final data = pokemonFromJson(response.body); 
      return  data;

    } catch (e) {
      throw Exception(e.toString());
    }
  }

} 