import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScZpNk-Szf5z1LZGY25Jofg3zYhiW7iZn-tg&usqp=CAU";

    return Drawer(
      child: Container(
        color: context.canvasColor,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: "Prasun Bhattacharya".text.bold.lg.make(),
                  accountEmail: Text("prasun.mgm@gmail.com"),
                  margin: EdgeInsets.zero,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl)),
                ),
                
                ),

            ListTile(
              key: key,
              leading: Icon(
                CupertinoIcons.home,
                color: context.accentColor,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: context.accentColor,
                  ),
              ), 
            ),

            ListTile(
              key: key,
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: context.accentColor,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: context.accentColor,
                  ),
              ), 
            ),

            ListTile(
              key: key,
              leading: Icon(
                CupertinoIcons.mail,
                color: context.accentColor,
              ),
              title: Text(
                "Mail Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: context.accentColor,
                  ),
              ), 
            ),

            ListTile(
              key: key,
              leading: Icon(
                IconData(0xf88b, fontFamily: 'MaterialIcons'),
                color: context.accentColor,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: context.accentColor,
                  ),
              ), 
            ),


          ],
        ),
      ),
    );
  }
}
