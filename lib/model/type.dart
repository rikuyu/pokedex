import 'package:freezed_annotation/freezed_annotation.dart';

part 'type.freezed.dart';

part 'type.g.dart';

@freezed
class Type with _$Type {
  const factory Type({
    required String name,
    required String url,
  }) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) =>
      _$TypeFromJson(json);
}
