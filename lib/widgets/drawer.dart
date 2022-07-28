import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScZpNk-Szf5z1LZGY25Jofg3zYhiW7iZn-tg&usqp=CAU";

    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 184, 255, 239),
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Prasun Bhattacharya"),
                  accountEmail: Text("prasun.mgm@gmail.com"),
                  margin: EdgeInsets.zero,
                  currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                )
                ),

            ListTile(
              key: key,
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                  ),
              ), 
            ),

            ListTile(
              key: key,
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                  ),
              ), 
            ),

            ListTile(
              key: key,
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text(
                "Mail Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                  ),
              ), 
            ),


          ],
        ),
      ),
    );
  }
}
