import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/ui/router/pokemon_app_router.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = PokemonAppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router.config(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
    );
  }
}
