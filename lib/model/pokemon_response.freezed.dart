// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonResponse _$PokemonResponseFromJson(Map<String, dynamic> json) {
  return _PokemonResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonResponse {
  String get name => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  List<Types> get types => throw _privateConstructorUsedError;
  Sprites get sprites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonResponseCopyWith<PokemonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResponseCopyWith<$Res> {
  factory $PokemonResponseCopyWith(
          PokemonResponse value, $Res Function(PokemonResponse) then) =
      _$PokemonResponseCopyWithImpl<$Res, PokemonResponse>;
  @useResult
  $Res call({String name, int order, List<Types> types, Sprites sprites});

  $SpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonResponseCopyWithImpl<$Res, $Val extends PokemonResponse>
    implements $PokemonResponseCopyWith<$Res> {
  _$PokemonResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? order = null,
    Object? types = null,
    Object? sprites = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Types>,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res> get sprites {
    return $SpritesCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonResponseCopyWith<$Res>
    implements $PokemonResponseCopyWith<$Res> {
  factory _$$_PokemonResponseCopyWith(
          _$_PokemonResponse value, $Res Function(_$_PokemonResponse) then) =
      __$$_PokemonResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int order, List<Types> types, Sprites sprites});

  @override
  $SpritesCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$_PokemonResponseCopyWithImpl<$Res>
    extends _$PokemonResponseCopyWithImpl<$Res, _$_PokemonResponse>
    implements _$$_PokemonResponseCopyWith<$Res> {
  __$$_PokemonResponseCopyWithImpl(
      _$_PokemonResponse _value, $Res Function(_$_PokemonResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? order = null,
    Object? types = null,
    Object? sprites = null,
  }) {
    return _then(_$_PokemonResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Types>,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonResponse implements _PokemonResponse {
  const _$_PokemonResponse(
      {required this.name,
      required this.order,
      required final List<Types> types,
      required this.sprites})
      : _types = types;

  factory _$_PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonResponseFromJson(json);

  @override
  final String name;
  @override
  final int order;
  final List<Types> _types;
  @override
  List<Types> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final Sprites sprites;

  @override
  String toString() {
    return 'PokemonResponse(name: $name, order: $order, types: $types, sprites: $sprites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.sprites, sprites) || other.sprites == sprites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, order,
      const DeepCollectionEquality().hash(_types), sprites);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonResponseCopyWith<_$_PokemonResponse> get copyWith =>
      __$$_PokemonResponseCopyWithImpl<_$_PokemonResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonResponseToJson(
      this,
    );
  }
}

abstract class _PokemonResponse implements PokemonResponse {
  const factory _PokemonResponse(
      {required final String name,
      required final int order,
      required final List<Types> types,
      required final Sprites sprites}) = _$_PokemonResponse;

  factory _PokemonResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonResponse.fromJson;

  @override
  String get name;
  @override
  int get order;
  @override
  List<Types> get types;
  @override
  Sprites get sprites;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonResponseCopyWith<_$_PokemonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
