class Item {
  final String id;
  final String name;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "prasun01",
      name: "Advertising",
      price: 1500,
      color: "#33505a",
      image: "https://images.squarespace-cdn.com/content/v1/57e49a19414fb5b5169a9161/1536858127669-O68R59LSCF5ZNFPSETCT/image-asset.jpeg")
];
