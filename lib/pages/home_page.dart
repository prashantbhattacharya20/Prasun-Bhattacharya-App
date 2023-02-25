import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prasun_bhattacharya_app/core/store.dart';
import 'package:prasun_bhattacharya_app/models/cart.dart';
import 'package:prasun_bhattacharya_app/models/catalog.dart';
import 'package:prasun_bhattacharya_app/utils/routes.dart';
import 'package:prasun_bhattacharya_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/drawer.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Photography App"
            .text
            .xl3
            .bold
            .color(context.theme.floatingActionButtonTheme.backgroundColor)
            .make()
            .px24(),
      ),
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation,RemoveMutation},
        builder: (context, store, status) =>  FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.cartRoute);
          },
          backgroundColor:
              context.theme.floatingActionButtonTheme.backgroundColor,
          child: Icon(CupertinoIcons.cart),
        ).badge(
          color: Vx.fuchsia300, 
          textStyle: TextStyle(
            color: MyTheme.darkBluishColor,
            fontSize: 12,
            fontWeight: FontWeight.bold), 
          size: 22, count: _cart.items.length,
          ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m1,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CatalogHeader(),
            if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              CatalogList().py8().expand()
            else
              CircularProgressIndicator().centered().py16().expand(),
          ]),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
