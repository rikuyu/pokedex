import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/remote/pokemon_data_source_impl.dart';

import '../../model/pokemon.dart';
import '../data_source/pokemon_data_source.dart';

final getPokemonDetailUseCaseProvider = Provider<GetPokemonDetailUseCase>((ref) =>
    GetPokemonDetailUseCase(pokemonDataSource: ref.watch(pokemonDataSource)));

class GetPokemonDetailUseCase {
  GetPokemonDetailUseCase({required this.pokemonDataSource});

  final PokemonDataSource pokemonDataSource;

  Future<Pokemon> call(int id) => pokemonDataSource.fetchPokemon(id);
}
