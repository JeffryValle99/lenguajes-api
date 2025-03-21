import 'package:flutter/material.dart';
import 'package:pokedex_app/providers/pokemon_provider.dart';
import 'package:pokedex_app/widgets/pokemon.dart';
// import 'package:pokedex_app/widgets/pokemon.dart';

class HomePage extends StatelessWidget {

  HomePage({super.key});
  
  final pokemonProvider = PokemonProvider();

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: pokemonProvider.getPokemons(), 
      builder: (context, snapshot) {

        if ( snapshot.connectionState == ConnectionState.waiting ) {
            return CircularProgressIndicator();
        } 


        if ( !snapshot.hasData ) {
          return Center(
            child: Text("No Hay Datos"),
          );
        } 
        

        final List<PokemonElement> pokemones = snapshot.data!.pokemon;

        // print(pokemones[0].type.first.name);

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
          itemCount: pokemones.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  SizedBox(height: 5.0,),
                  Text(pokemones[index].name),
                  Image.network(
                    pokemones[index].img,
                    height: 120.0,
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(pokemones[index].type.first.name,
                        style: TextStyle(
                          backgroundColor: Colors.green.shade300,
                          color: Colors.white),),
                      Text(pokemones[index].type.last.name,
                        style: TextStyle(
                          backgroundColor: Colors.amberAccent.shade700,
                          color: Colors.white),),
                      
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}