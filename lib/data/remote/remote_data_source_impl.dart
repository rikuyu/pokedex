import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/remote/DioClient.dart';
import 'package:pokedex/data/remote/remote_data_source.dart';

import '../../model/pokemon.dart';

final remoteDataSource =
    Provider((ref) => RemoteDataSourceImpl(dio: ref.read(dioProvider)));

class RemoteDataSourceImpl implements RemoteDataSource {
  RemoteDataSourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<List<Pokemon>> fetchPokemonList() {
    // TODO: implement fetchPokemonList
    throw UnimplementedError();
  }

  @override
  Future<Pokemon> fetchPokemon() {
    // TODO: implement fetchPokemon
    throw UnimplementedError();
  }
}