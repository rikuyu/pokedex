import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/model/pokemon.dart';
import '../shared/paging_item.dart';

part 'pokemon_paging_item.freezed.dart';

@freezed
class PokemonPagingItem with _$PokemonPagingItem implements PagingItem {
  const factory PokemonPagingItem({
    @Default("") String id,
    @Default(false) bool hasMore,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default([]) List<Pokemon> pokemonList,
  }) = _PokemonPagingItem;
}
