import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/usecase/get_pokemon_list_use_case.dart';

import '../model/pokemon.dart';

final pokemonListStateNotifierProvider =
    StateNotifierProvider<PokemonListStateNotifier, AsyncValue<List<Pokemon>>>(
        (ref) =>
            PokemonListStateNotifier(ref.watch(getPokemonListUseCaseProvider)));

class PokemonListStateNotifier
    extends StateNotifier<AsyncValue<List<Pokemon>>> {
  PokemonListStateNotifier(this.useCase) : super(const AsyncValue.data([])) {
    getPokemonList();
  }

  final GetPokemonListUseCase useCase;

  // TODO(rikuyu) guard
  void getPokemonList() async {
    if (state is AsyncLoading) return;
    state = const AsyncValue.loading();
    try {
      final pokemonList = state.value ?? [];
      final response = await useCase.call();
      final newState = [...pokemonList, ...response];
      state = AsyncValue.data(newState);
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }
}
