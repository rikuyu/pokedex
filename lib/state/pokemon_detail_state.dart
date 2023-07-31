import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/usecase/get_pokemon_detail_use_case.dart';

import '../model/pokemon.dart';

final pokemonDetailStateNotifierProvider =
    StateNotifierProvider<PokemonDetailStateNotifier, Pokemon?>((ref) =>
        PokemonDetailStateNotifier(ref.watch(getPokemonDetailUseCaseProvider)));

class PokemonDetailStateNotifier extends StateNotifier<Pokemon?> {
  PokemonDetailStateNotifier(this.useCase) : super(null);

  final GetPokemonDetailUseCase useCase;

  void getPokemonDetail(int id) async {
    state = await useCase.call(id);
  }
}
