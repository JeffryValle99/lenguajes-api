import 'package:flutter/material.dart';
import 'package:pokedex_app/widgets/pokemon.dart';

class ItemList extends StatelessWidget {
  
  final List<PokemonElement> poke;
  
  const ItemList({super.key, required this.poke});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(poke.first.name),
      trailing: Text(poke.first.id.toString()),
    );
  }
}
