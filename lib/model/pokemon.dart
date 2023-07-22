import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/model/sprites.dart';
import 'package:pokedex/model/types.dart';

part 'pokemon.freezed.dart';

part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {

  const factory Pokemon({
    required String name,
    required int order,
    required List<Types> types,
    required Sprites sprites,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}
