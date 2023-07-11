
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FavoritePokemonListScreen extends StatelessWidget {
  const FavoritePokemonListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FavoritePokemonListScreen"),
      ),
      body: const Center(child: Text("2")),
    );
  }
}