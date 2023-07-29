import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/remote/DioClient.dart';
import 'package:pokedex/data/remote/remote_data_source.dart';
import 'package:pokedex/shared/constraints.dart';

import '../../model/pokemon.dart';

final remoteDataSource =
    Provider((ref) => RemoteDataSourceImpl(dio: ref.read(dioProvider)));

class RemoteDataSourceImpl implements RemoteDataSource {
  RemoteDataSourceImpl({required this.dio});

  final Dio dio;
  final int limit = 10;
  int index = 1;

  @override
  Future<List<Pokemon>> fetchPokemonList() async {
    List<Future<Pokemon>> pokemonList = [];
    for (int i = index; i < (index + limit); i++) {
      pokemonList.add(fetchPokemon(i));
    }
    index += limit;
    return Future.wait(pokemonList);
  }

  @override
  Future<Pokemon> fetchPokemon(int id) async {
    final response = await dio.get("${Constraints.pokeApi}/$id");
    return Pokemon.fromJson(response.data);
  }
}
