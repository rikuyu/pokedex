import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/usecase/get_pokemon_list_use_case.dart';

import '../model/pokemon_paging_item.dart';
import '../shared/constraints.dart';

final pokemonListStateNotifierProvider =
    StateNotifierProvider<PokemonListStateNotifier, PokemonPagingItem>((ref) =>
        PokemonListStateNotifier(ref.watch(getPokemonListUseCaseProvider)));

class PokemonListStateNotifier extends StateNotifier<PokemonPagingItem> {
  PokemonListStateNotifier(this.useCase) : super(const PokemonPagingItem()) {
    getPokemonList();
  }

  final GetPokemonListUseCase useCase;

  void getPokemonList() async {
    if (state.isLoading) return;
    state = state.copyWith(isError: false, isLoading: true);
    try {
      final pokemonList = state.pokemonList;
      final response = await useCase.call();
      final hasMore = response.length == Constraints.maxFetchSize;
      final newState = [...pokemonList, ...response];
      state = state.copyWith(
          pokemonList: newState, hasMore: hasMore, isLoading: false);
    } catch (error) {
      state = state.copyWith(isError: true, isLoading: false);
    }
  }
}
