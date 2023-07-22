import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprites.freezed.dart';

part 'sprites.g.dart';

@freezed
class Sprites with _$Sprites {

  const factory Sprites({
    @JsonKey(name: "front_default") required String frontDefault,
    @JsonKey(name: "front_shiny")required String frontShiny,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}
