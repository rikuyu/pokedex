// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonResponse _$$_PokemonResponseFromJson(Map<String, dynamic> json) =>
    _$_PokemonResponse(
      name: json['name'] as String,
      order: json['order'] as int,
      types: (json['types'] as List<dynamic>)
          .map((e) => Types.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonResponseToJson(_$_PokemonResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'order': instance.order,
      'types': instance.types,
      'sprites': instance.sprites,
    };
