// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sprites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return _Sprites.fromJson(json);
}

/// @nodoc
mixin _$Sprites {
  @JsonKey(name: "front_default")
  String get frontDefault => throw _privateConstructorUsedError;
  @JsonKey(name: "front_shiny")
  String get frontShiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpritesCopyWith<Sprites> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesCopyWith<$Res> {
  factory $SpritesCopyWith(Sprites value, $Res Function(Sprites) then) =
      _$SpritesCopyWithImpl<$Res, Sprites>;
  @useResult
  $Res call(
      {@JsonKey(name: "front_default") String frontDefault,
      @JsonKey(name: "front_shiny") String frontShiny});
}

/// @nodoc
class _$SpritesCopyWithImpl<$Res, $Val extends Sprites>
    implements $SpritesCopyWith<$Res> {
  _$SpritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontShiny = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpritesCopyWith<$Res> implements $SpritesCopyWith<$Res> {
  factory _$$_SpritesCopyWith(
          _$_Sprites value, $Res Function(_$_Sprites) then) =
      __$$_SpritesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "front_default") String frontDefault,
      @JsonKey(name: "front_shiny") String frontShiny});
}

/// @nodoc
class __$$_SpritesCopyWithImpl<$Res>
    extends _$SpritesCopyWithImpl<$Res, _$_Sprites>
    implements _$$_SpritesCopyWith<$Res> {
  __$$_SpritesCopyWithImpl(_$_Sprites _value, $Res Function(_$_Sprites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontShiny = null,
  }) {
    return _then(_$_Sprites(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sprites implements _Sprites {
  const _$_Sprites(
      {@JsonKey(name: "front_default") required this.frontDefault,
      @JsonKey(name: "front_shiny") required this.frontShiny});

  factory _$_Sprites.fromJson(Map<String, dynamic> json) =>
      _$$_SpritesFromJson(json);

  @override
  @JsonKey(name: "front_default")
  final String frontDefault;
  @override
  @JsonKey(name: "front_shiny")
  final String frontShiny;

  @override
  String toString() {
    return 'Sprites(frontDefault: $frontDefault, frontShiny: $frontShiny)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sprites &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, frontShiny);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpritesCopyWith<_$_Sprites> get copyWith =>
      __$$_SpritesCopyWithImpl<_$_Sprites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpritesToJson(
      this,
    );
  }
}

abstract class _Sprites implements Sprites {
  const factory _Sprites(
          {@JsonKey(name: "front_default") required final String frontDefault,
          @JsonKey(name: "front_shiny") required final String frontShiny}) =
      _$_Sprites;

  factory _Sprites.fromJson(Map<String, dynamic> json) = _$_Sprites.fromJson;

  @override
  @JsonKey(name: "front_default")
  String get frontDefault;
  @override
  @JsonKey(name: "front_shiny")
  String get frontShiny;
  @override
  @JsonKey(ignore: true)
  _$$_SpritesCopyWith<_$_Sprites> get copyWith =>
      throw _privateConstructorUsedError;
}
