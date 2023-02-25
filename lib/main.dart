import 'package:flutter/material.dart';
import 'package:prasun_bhattacharya_app/core/store.dart';
import 'package:prasun_bhattacharya_app/pages/cart_page.dart';
import 'package:prasun_bhattacharya_app/pages/home_page.dart';
import 'package:prasun_bhattacharya_app/pages/login_page.dart';
import 'package:prasun_bhattacharya_app/utils/routes.dart';
import 'package:prasun_bhattacharya_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(
    VxState(
      store: MyStore(),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute:(context) => CartPage()
      },
    );
  }
}
