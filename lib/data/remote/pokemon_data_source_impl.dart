import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/remote/DioClient.dart';
import 'package:pokedex/shared/constraints.dart';
import 'package:pokedex/shared/converter.dart';

import '../../domain/data_source/pokemon_data_source.dart';
import '../../model/pokemon.dart';
import '../../model/pokemon_response.dart';

final pokemonDataSource = Provider<PokemonDataSource>(
    (ref) => PokemonDataSourceImpl(dio: ref.read(dioProvider)));

class PokemonDataSourceImpl implements PokemonDataSource {
  PokemonDataSourceImpl({required this.dio});

  final Dio dio;
  final int _limit = Constraints.maxFetchSize;
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
    final enPokemon = PokemonResponse.fromJson(response.data);
    final jaPokemon = enPokemon.convertPokemonFromResponse();
    return jaPokemon;
  }
}
