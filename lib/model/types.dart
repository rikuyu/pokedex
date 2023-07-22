import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/model/type.dart';

part 'types.freezed.dart';

part 'types.g.dart';

@freezed
class Types with _$Types {
  const factory Types({required Type type,}) = _Types;

  factory Types.fromJson(Map<String, dynamic> json) =>
      _$TypesFromJson(json);
}
