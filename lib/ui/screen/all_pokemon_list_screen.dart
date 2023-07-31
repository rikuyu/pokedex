import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/model/pokemon_response.dart';
import 'package:pokedex/state/pokemon_list_state.dart';

import '../../model/pokemon.dart';

@RoutePage()
class AllPokemonListScreen extends HookConsumerWidget {
  const AllPokemonListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetch = ref.watch(pokemonListStateNotifierProvider.notifier);
    List<Pokemon> pokemonList = ref.watch(pokemonListStateNotifierProvider);
    List<Widget> items = pokemonList
        .map((e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Text(e.name),
            ))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("AllPokemonListScreen"),
      ),
      body: ListView(children: items),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetch.getPokemonList();
        },
      ),
    );
  }
}
