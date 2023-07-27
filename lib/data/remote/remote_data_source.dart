
import 'package:pokedex/model/pokemon.dart';

abstract interface class RemoteDataSource {
  Future<List<Pokemon>> fetchPokemonList();
  Future<Pokemon> fetchPokemon();
}