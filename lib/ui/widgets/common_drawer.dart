import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/widgets/about_tile.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class CommonDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Pawan Kumar",
            ),
            accountEmail: Text(
              "mtechviral@gmail.com",
            ),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new AssetImage(UIData.pkImage),
            ),
          ),
          new ListTile(
            title: Text(
              "Profile",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed(UIData.profile);
            },
          ),
          new ListTile(
            title: Text(
              "Shopping",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            onTap: () {
              Navigator.of(context).pushNamed(UIData.home);
            },
          ),
          Divider(),
          MyAboutTile()
        ],
      ),
    );
  }
}
