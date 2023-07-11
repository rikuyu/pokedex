// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'pokemon_app_router.dart';

abstract class _$PokemonAppRouter extends RootStackRouter {
  // ignore: unused_element
  _$PokemonAppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    PokemonDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PokemonDetailScreen(),
      );
    },
    FavoritePokemonListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoritePokemonListScreen(),
      );
    },
    AllPokemonListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AllPokemonListScreen(),
      );
    },
  };
}

/// generated route for
/// [PokemonDetailScreen]
class PokemonDetailRoute extends PageRouteInfo<void> {
  const PokemonDetailRoute({List<PageRouteInfo>? children})
      : super(
          PokemonDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'PokemonDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoritePokemonListScreen]
class FavoritePokemonListRoute extends PageRouteInfo<void> {
  const FavoritePokemonListRoute({List<PageRouteInfo>? children})
      : super(
          FavoritePokemonListRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritePokemonListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AllPokemonListScreen]
class AllPokemonListRoute extends PageRouteInfo<void> {
  const AllPokemonListRoute({List<PageRouteInfo>? children})
      : super(
          AllPokemonListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllPokemonListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
