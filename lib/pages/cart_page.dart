import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.xl2.bold.make(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
      backgroundColor: context.canvasColor,
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\u{20B9}3000".text.xl5.color(context.accentColor).make(),
          30.widthBox,
          ElevatedButton(
            onPressed: (() {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: "Buying not Supported yet".text.make()
                  )
              );
            }),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  context.accentColor,
                ),
                foregroundColor: MaterialStateProperty.all(context.cardColor),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                )),
            child: "Buy".text.bold.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
                       iconColor: context.accentColor,
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                color: context.accentColor,
                onPressed: () {},
              ),
              title: "Item 1".text.color(context.accentColor).make(),
            ));
  }
}
