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
    final notifier = ref.watch(pokemonListStateNotifierProvider.notifier);
    AsyncValue<List<Pokemon>> asyncStatus =
        ref.watch(pokemonListStateNotifierProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text("AllPokemonListScreen"),
        ),
        body: asyncStatus.when(
          data: (pokemon) =>
              _pokemonList(asyncStatus.value ?? [], notifier.getPokemonList),
          error: (error, _) => Text('error:${error.toString()}'),
          loading: () => const Center(child: CircularProgressIndicator()),
        ));
  }

  Widget _pokemonList(
    List<Pokemon> pokemonList,
    void Function() fetch,
  ) {
    List<Widget> items =
        pokemonList.map((pokemon) => PokemonItem(pokemon)).toList();
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollNotification) {
            final currentPosition = scrollNotification.metrics.pixels;
            final maxPosition = scrollNotification.metrics.maxScrollExtent;
            if (currentPosition == maxPosition) {
              fetch();
              return true;
            }
            return false;
          },
          child: GridView.builder(
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0),
              itemBuilder: (_, index) => items[index]),
        ));
  }
}
