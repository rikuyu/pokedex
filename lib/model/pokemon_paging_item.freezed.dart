// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_paging_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonPagingItem {
  String get id => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Pokemon> get pokemonList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonPagingItemCopyWith<PokemonPagingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonPagingItemCopyWith<$Res> {
  factory $PokemonPagingItemCopyWith(
          PokemonPagingItem value, $Res Function(PokemonPagingItem) then) =
      _$PokemonPagingItemCopyWithImpl<$Res, PokemonPagingItem>;
  @useResult
  $Res call(
      {String id,
      bool hasMore,
      bool isLoading,
      bool isError,
      List<Pokemon> pokemonList});
}

/// @nodoc
class _$PokemonPagingItemCopyWithImpl<$Res, $Val extends PokemonPagingItem>
    implements $PokemonPagingItemCopyWith<$Res> {
  _$PokemonPagingItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hasMore = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? pokemonList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      pokemonList: null == pokemonList
          ? _value.pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonPagingItemCopyWith<$Res>
    implements $PokemonPagingItemCopyWith<$Res> {
  factory _$$_PokemonPagingItemCopyWith(_$_PokemonPagingItem value,
          $Res Function(_$_PokemonPagingItem) then) =
      __$$_PokemonPagingItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool hasMore,
      bool isLoading,
      bool isError,
      List<Pokemon> pokemonList});
}

/// @nodoc
class __$$_PokemonPagingItemCopyWithImpl<$Res>
    extends _$PokemonPagingItemCopyWithImpl<$Res, _$_PokemonPagingItem>
    implements _$$_PokemonPagingItemCopyWith<$Res> {
  __$$_PokemonPagingItemCopyWithImpl(
      _$_PokemonPagingItem _value, $Res Function(_$_PokemonPagingItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hasMore = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? pokemonList = null,
  }) {
    return _then(_$_PokemonPagingItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      pokemonList: null == pokemonList
          ? _value._pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc

class _$_PokemonPagingItem implements _PokemonPagingItem {
  const _$_PokemonPagingItem(
      {this.id = "",
      this.hasMore = false,
      this.isLoading = false,
      this.isError = false,
      final List<Pokemon> pokemonList = const []})
      : _pokemonList = pokemonList;

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  final List<Pokemon> _pokemonList;
  @override
  @JsonKey()
  List<Pokemon> get pokemonList {
    if (_pokemonList is EqualUnmodifiableListView) return _pokemonList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonList);
  }

  @override
  String toString() {
    return 'PokemonPagingItem(id: $id, hasMore: $hasMore, isLoading: $isLoading, isError: $isError, pokemonList: $pokemonList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonPagingItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._pokemonList, _pokemonList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, hasMore, isLoading, isError,
      const DeepCollectionEquality().hash(_pokemonList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonPagingItemCopyWith<_$_PokemonPagingItem> get copyWith =>
      __$$_PokemonPagingItemCopyWithImpl<_$_PokemonPagingItem>(
          this, _$identity);
}

abstract class _PokemonPagingItem implements PokemonPagingItem {
  const factory _PokemonPagingItem(
      {final String id,
      final bool hasMore,
      final bool isLoading,
      final bool isError,
      final List<Pokemon> pokemonList}) = _$_PokemonPagingItem;

  @override
  String get id;
  @override
  bool get hasMore;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Pokemon> get pokemonList;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonPagingItemCopyWith<_$_PokemonPagingItem> get copyWith =>
      throw _privateConstructorUsedError;
}
