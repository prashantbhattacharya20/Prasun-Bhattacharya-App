import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prasun_bhattacharya_app/core/store.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: (() {
        if (!isInCart) {
          AddMutation(catalog);
        }
      }),
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
            context.cardColor,
          ),
          backgroundColor: MaterialStateProperty.all(
            context.accentColor,
          ),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
