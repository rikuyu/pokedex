import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/usecase/get_pokemon_list_use_case.dart';

import '../model/pokemon.dart';

final pokemonListStateNotifierProvider =
    StateNotifierProvider<PokemonListStateNotifier, List<Pokemon>>((ref) =>
        PokemonListStateNotifier(ref.watch(getPokemonListUseCaseProvider)));

class PokemonListStateNotifier extends StateNotifier<List<Pokemon>> {
  PokemonListStateNotifier(this.useCase) : super([]) {
    getPokemonList();
  }

  final GetPokemonListUseCase useCase;

  void getPokemonList() async {
    state = await useCase.call();
  }
}
