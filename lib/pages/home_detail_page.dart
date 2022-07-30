import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/home_widgets/add_to_cart.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.canvasColor,
        child: ButtonBar( alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.all(10),
                children: [
                  "\u{20B9}${catalog.price}".text.bold.xl4.color(context.accentColor).make(),
                  AddToCart(catalog: catalog).wh(120, 50)
                ],),
      ),
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
                  color: context.cardColor,
                  child: Column(
                    children: [
                       catalog.name.text.xl3.color(context.accentColor).bold.make(),
                       catalog.desc.text.xl.color(context.accentColor).center.textStyle(context.captionStyle).make(),
                       10.heightBox,
                       "Dolores elitr amet lorem eirmod tempor et consetetur lorem, ea diam labore. Dolores elitr amet lorem eirmod tempor et consetetur lorem, ea diam labore consetetur dolore kasd sit at sed eos."
                       .text.color(context.accentColor).textStyle(context.captionStyle).make()
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
