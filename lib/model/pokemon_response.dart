import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/model/sprites.dart';
import 'package:pokedex/model/types.dart';

part 'pokemon_response.freezed.dart';

part 'pokemon_response.g.dart';

@freezed
class PokemonResponse with _$PokemonResponse {

  const factory PokemonResponse({
    required String name,
    required int order,
    required List<Types> types,
    required Sprites sprites,
  }) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);
}
