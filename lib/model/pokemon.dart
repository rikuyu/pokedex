class Pokemon {
  Pokemon({
    required this.index,
    required this.name,
    required this.types,
    required this.imageUrl,
    required this.shinyImageUrl,
  });

  final String name;
  final int index;
  final List<String> types;
  final String imageUrl;
  final String shinyImageUrl;
}
