import 'package:flutter/material.dart';
import 'package:prasun_bhattacharya_app/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      child: ListTile(
          onTap: () {
            print("${item.name} pressed");
          },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\u{20B9}${item.price}",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
