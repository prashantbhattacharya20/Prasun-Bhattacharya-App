import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog})
    : assert (catalog != null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: ButtonBar( alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.all(10),
              children: [
                "\u{20B9}${catalog.price}".text.bold.xl4.color(Color.fromARGB(255, 69, 15, 70)).make(),
                ElevatedButton(
                  onPressed: (() {}), 
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      MyTheme.darkBluishColor,
                    ),
                    shape: MaterialStateProperty.all(
                      StadiumBorder(),
                    )
                  ),
                  child: "Add to Cart".text.make(),  
                  ).wh(150, 50)
              ],),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(
                catalog.image,
                height: 400,
                width: 400,
                ),
            ).py16(),
            Expanded(
              child: VxArc(
                height: 20.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                       catalog.name.text.xl3.color(MyTheme.darkBluishColor).bold.make(),
                       catalog.desc.text.xl.center.textStyle(context.captionStyle).make(),
                       10.heightBox,
                       "Dolores elitr amet lorem eirmod tempor et consetetur lorem, ea diam labore. Dolores elitr amet lorem eirmod tempor et consetetur lorem, ea diam labore consetetur dolore kasd sit at sed eos."
                       .text.textStyle(context.captionStyle).make()
                    ],
                  ).py32(),
                ),
              )
            )
        ],
        ),
      ),
     );
  }
}
