class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "Advertising",
        desc: "Get The Best Images To Advertise Your Products",
        price: 1500,
        color: "#33505a",
        image:
            "https://images.squarespace-cdn.com/content/v1/57e49a19414fb5b5169a9161/1536858127669-O68R59LSCF5ZNFPSETCT/image-asset.jpeg"),
    Item(
        id: 2,
        name: "Celebrity / Actors",
        desc: "Cinematic and Modelling shots for Actors and Celebrities",
        price: 1500,
        color: "#33505a",
        image:
            "http://arjunmark.com/wp-content/uploads/2021/10/CadburyDairyMilk_29-01-20_Shot24349.jpg"),
    Item(
        id: 3,
        name: "Fashion / Editorial",
        desc: "Fashion and Editorial Porfolio Shoots",
        price: 1500,
        color: "#33505a",
        image:
            "https://i.pinimg.com/originals/ce/bd/c8/cebdc860c8cc086a2616feeecee1a6c8.png"),
    Item(
        id: 4,
        name: "Beauty / Cosmetics",
        desc:
            "Styling, MakeUp, JawDropping OutFit Shots and Cosmetic Advertising Shots",
        price: 1500,
        color: "#33505a",
        image:
            "https://vip-go.shutterstock.com/blog/wp-content/uploads/sites/5/2018/11/118.jpg"),
    Item(
        id: 5,
        name: "Potrait",
        desc: "Perfect Potrait Shots for your Profile",
        price: 1500,
        color: "#33505a",
        image:
            "https://cdn.mos.cms.futurecdn.net/p5quSf4dZXctG9WFepXFdR-1200-80.jpg"),
    Item(
        id: 6,
        name: "Landscapes",
        desc: "Mesmerising Landscape Shots of Nature",
        price: 1500,
        color: "#33505a",
        image:
            "https://i.natgeofe.com/n/8022bf25-d5ef-48c1-b460-dbac1448e122/09-9226610_uploadsmember665562yourshot-665562-9226610jpg_igdjhxksrjifxjzu4rgbsw37bhp3eflutfvvbpyjwjhzlmh4iziq_3000x2000.jpg?w=636&h=424"),
    Item(
        id: 7,
        name: "Product",
        desc: "Product Shoot",
        price: 1500,
        color: "#33505a",
        image:
            "https://i1.sndcdn.com/artworks-9y72I9t9MbP4yKd7-vzynsg-t500x500.jpg"),
    Item(
        id: 8,
        name: "Fitness",
        desc: "Energetic and Sporty Shots for your Fitness Goals",
        price: 1500,
        color: "#33505a",
        image:
            "https://images.squarespace-cdn.com/content/v1/56cca41f4d088eb7a2a32c7a/1556656887059-V57XPDQTH82PTV9T28U1/Dax+Photography-1167.jpg?format=2500w"),
    Item(
        id: 9,
        name: "E-Commerce",
        desc:
            "Appealing Shots that can make Customers Go Crazy for your Products",
        price: 1500,
        color: "#33505a",
        image:
            "https://vitals.co/blog/wp-content/uploads/2021/07/cover-img-product-photography.png")
  ];

  // Get Item by ID
 Item getbyId(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  // Get Item by position
Item getByPosition(int pos) => items[pos];
}

class Item {
  int id;
  String name;
  String desc;
  num price;
  String color;
  String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
