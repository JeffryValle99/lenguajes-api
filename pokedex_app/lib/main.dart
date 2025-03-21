import 'package:flutter/material.dart';
import 'package:pokedex_app/pokemon_app.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Pokemón App", style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),
        body: Center(
          child: PokemonApp(),
        ),
      ),
    );
  }
}
