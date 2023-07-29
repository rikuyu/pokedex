import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/remote/pokemon_data_source_impl.dart';
import 'package:pokedex/model/pokemon.dart';

import '../data_source/pokemon_data_source.dart';

final getPokemonListUseCaseProvider = Provider<GetPokemonListUseCase>((ref) =>
    GetPokemonListUseCase(ref.watch(pokemonDataSource)));

class GetPokemonListUseCase {
  GetPokemonListUseCase(this.pokemonDataSource);

  final PokemonDataSource pokemonDataSource;

  Future<List<Pokemon>> call() async => pokemonDataSource.fetchPokemonList();
}
