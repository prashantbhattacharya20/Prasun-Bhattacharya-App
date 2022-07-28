class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "Advertising",
        desc: "Get The Best Images To Advertise Your Products",
        price: 1500,
        color: "#33505a",
        image:
            "https://images.squarespace-cdn.com/content/v1/57e49a19414fb5b5169a9161/1536858127669-O68R59LSCF5ZNFPSETCT/image-asset.jpeg")
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

