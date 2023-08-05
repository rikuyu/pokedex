import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/model/pokemon_response.dart';
import 'package:pokedex/state/pokemon_list_state.dart';
import 'package:pokedex/ui/widget/pokemon_item.dart';

import '../../model/pokemon.dart';

@RoutePage()
class AllPokemonListScreen extends HookConsumerWidget {
  const AllPokemonListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Pokemon> pokemonList = ref.watch(pokemonListStateNotifierProvider);
    List<Widget> items =
        pokemonList.map((pokemon) => PokemonItem(pokemon)).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("AllPokemonListScreen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: items,
        ),
      ),
    );
  }
}
