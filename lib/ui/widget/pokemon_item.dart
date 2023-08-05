import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/shared/color.dart';
import 'package:pokedex/shared/constraints.dart';

class PokemonItem extends HookConsumerWidget {
  const PokemonItem(this.pokemon, {super.key});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double itemSize = (screenWidth - 10.0 * 3.0) / 2;
    final Color color =
        typeColor[pokemon.types.first] ?? const Color(0xFFE1EDFC);
    final Color fontColor = color.getThemeColor();

    return Container(
      width: itemSize,
      height: itemSize,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(20.0)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 24, bottom: 40, left: 24, right: 24),
              child: FittedBox(
                fit: BoxFit.contain,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      color.withOpacity(0.90), BlendMode.srcATop),
                  child: Image.asset(Constraints.itemBackground),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(pokemon.imageUrl),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Text(
                "No.${pokemon.index} ${pokemon.name}",
                style: TextStyle(
                    color: fontColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
