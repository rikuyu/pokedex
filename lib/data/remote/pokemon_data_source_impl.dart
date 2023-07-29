
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/remote/DioClient.dart';
import 'package:pokedex/shared/constraints.dart';

import '../../domain/data_source/pokemon_data_source.dart';
import '../../model/pokemon.dart';

final pokemonDataSource =
    Provider<PokemonDataSource>((ref) => PokemonDataSourceImpl(dio: ref.read(dioProvider)));

class PokemonDataSourceImpl implements PokemonDataSource {
  PokemonDataSourceImpl({required this.dio});

  final Dio dio;
  final int _limit = 10;
  int _index = 1;

  @override
  Future<List<Pokemon>> fetchPokemonList() async {
    List<Future<Pokemon>> pokemonList = [];
    for (int i = _index; i < (_index + _limit); i++) {
      pokemonList.add(fetchPokemon(i));
    }
    _index += _limit;
    return Future.wait(pokemonList);
  }

  @override
  Future<Pokemon> fetchPokemon(int id) async {
    final response = await dio.get("${Constraints.pokeApi}/$id");
    return Pokemon.fromJson(response.data);
  }
}
