import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
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
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(
            mutations: {RemoveMutation},
            builder: (context, store, status) {
              return "\u{20B9}${_cart.totalPrice}"
                  .text
                  .xl5
                  .color(context.accentColor)
                  .make();
            },
          ),
          30.widthBox,
          ElevatedButton(
            onPressed: (() {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "Buying not Supported yet".text.make()));
            }),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  context.accentColor,
                ),
                foregroundColor: MaterialStateProperty.all(context.cardColor),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                )),
            child: "Book Slots".text.bold.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isNotEmpty
        ? ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.done),
                  iconColor: context.accentColor,
                  trailing: IconButton(
                      icon: Icon(Icons.remove_circle_outline),
                      color: context.accentColor,
                      onPressed: () => RemoveMutation(_cart.items[index])),
                  title: _cart.items[index].name.text
                      .color(context.accentColor)
                      .make(),
                ))
        : "Nothing to show".text.color(context.accentColor).xl3.makeCentered();
  }
}
