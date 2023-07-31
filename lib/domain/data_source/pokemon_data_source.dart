
import '../../model/pokemon.dart';

abstract interface class PokemonDataSource {
  Future<List<Pokemon>> fetchPokemonList();
  Future<Pokemon> fetchPokemon(int id);
}