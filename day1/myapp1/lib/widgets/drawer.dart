import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.pink[600],
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.pink[600]
                  ),
                  margin: EdgeInsets.zero,
                  accountName: Text("Debidatta Ray"),
                  accountEmail: Text("debidatta.ray@gmail.com"),
                  currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl),),
                )
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.home,color: Colors.white,),
                  title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white

                  ),
                  ),

                ),ListTile(
                  leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
                  title: Text("Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white

                  ),
                  ),

                ),ListTile(
                  leading: Icon(CupertinoIcons.mail,color: Colors.white,),
                  title: Text("Email Me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white

                  ),
                  ),

                ),
          ],
        ),
      ),
    );
  }
}
