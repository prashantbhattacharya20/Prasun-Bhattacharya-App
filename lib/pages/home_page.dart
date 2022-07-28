import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
    int days = 30;
    String name = "Prasun";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        centerTitle: true,
        title: Text("Catalog App",
        textScaleFactor: 1.8,
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days Days of Flutter Mr. $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
