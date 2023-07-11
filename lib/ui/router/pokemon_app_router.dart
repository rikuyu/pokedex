import 'package:auto_route/auto_route.dart';

import '../screen/all_pokemon_list_screen.dart';
import '../screen/favorite_pokemon_list_screen.dart';
import '../screen/pokemon_detail_screen.dart';

part 'pokemon_app_router.gr.dart';

@AutoRouterConfig()
class PokemonAppRouter extends _$PokemonAppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AllPokemonListRoute.page, initial: true),
        AutoRoute(page: FavoritePokemonListRoute.page),
        AutoRoute(page: PokemonDetailRoute.page)
      ];
}
