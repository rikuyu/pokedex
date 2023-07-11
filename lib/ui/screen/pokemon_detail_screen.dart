
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PokemonDetailScreen extends StatelessWidget {
  const PokemonDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PokemonDetailScreen"),
      ),
      body: const Center(child: Text("3")),
    );
  }
}