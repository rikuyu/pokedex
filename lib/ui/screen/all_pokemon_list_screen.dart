
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AllPokemonListScreen extends StatelessWidget {
  const AllPokemonListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AllPokemonListScreen"),
      ),
      body: const Center(child: Text("1")),
    );
  }
}