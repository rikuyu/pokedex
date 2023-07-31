import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/model/pokemon_response.dart';
import 'package:pokedex/shared/constraints.dart';

extension PokemonResponseExt on PokemonResponse {
  Future<String> convertJaPokemonName() async {
    String loadData =
        await rootBundle.loadString(Constraints.pokemonNameJsonPath);
    final jsonData = json.decode(loadData);
    for (var data in jsonData) {
      if (data[Language.en.name].toLowerCase() == name.toLowerCase()) {
        return data[Language.ja.name];
      }
    }
    return Language.unknown.name;
  }

  Future<List<String>> convertJaTypeName() async {
    String loadData =
        await rootBundle.loadString(Constraints.pokemonTypeJsonPath);
    final jsonData = json.decode(loadData);
    final List<String> typeList = [];
    for (var typeData in types) {
      for (var j in jsonData) {
        if (j[Language.en.name].toLowerCase() ==
            typeData.type.name.toLowerCase()) {
          typeList.add(j[Language.ja.name]);
        }
      }
    }
    return typeList;
  }

  Future<Pokemon> convertPokemonFromResponse() async => Pokemon(
        index: order,
        name: await convertJaPokemonName(),
        types: await convertJaTypeName(),
        imageUrl: sprites.frontDefault,
        shinyImageUrl: sprites.frontShiny,
      );
}

enum Language {
  en,
  ja,
  unknown,
}
