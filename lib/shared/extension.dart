
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/shared/constraints.dart';

extension PokemonExtensions on Pokemon {
  Future<String> convertJaPokemonName() async {
    String loadData = await rootBundle.loadString(Constraints.jsonPath);
    final jsonData = json.decode(loadData);
    for (var data in jsonData) {
      if (data[Language.en.name].toLowerCase() == name.toLowerCase()) {
        return data[Language.ja.name];
      }
    }
    return Language.unknown.name;
  }
}

enum Language {
  en,
  ja,
  unknown,
}