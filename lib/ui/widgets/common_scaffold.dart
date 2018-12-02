import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/widgets/common_drawer.dart';
import 'package:flutter_uikit/ui/widgets/custom_float.dart';
import 'package:flutter_uikit/utils/uidata.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommonScaffold extends StatelessWidget {
  final appTitle;
  final Widget bodyData;
  final showFAB;
  final showDrawer;
  final backGroundColor;
  final actionFirstIcon;
  final scaffoldKey;
  final showBottomNav;
  final floatingIcon;
  final centerDocked;
  final elevation;
  final VoidCallback floatingCallback;

  CommonScaffold({
    this.appTitle,
    this.bodyData,
    this.showFAB = false,
    this.showDrawer = false,
    this.backGroundColor,
    this.actionFirstIcon = Icons.search,
    this.scaffoldKey,
    this.showBottomNav = false,
    this.centerDocked = false,
    this.floatingIcon,
    this.elevation = 4.0,
    this.floatingCallback
  });

  Widget bottomBarButton(IconData iconData) => IconButton(
        icon: Icon(iconData),
        onPressed: () {},
        color: Colors.white,
      );

  Widget myBottomBar(BuildContext context) => BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            bottomBarButton(Icons.flash_on),
            bottomBarButton(FontAwesomeIcons.store),
            bottomBarButton(FontAwesomeIcons.beer),
            bottomBarButton(FontAwesomeIcons.bone),
            bottomBarButton(FontAwesomeIcons.appleAlt)
          ],
        ),
        color: Theme.of(context).primaryColor,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey != null ? scaffoldKey : null,
      backgroundColor: backGroundColor != null ? backGroundColor : null,
      appBar: AppBar(
        elevation: elevation,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(appTitle),
        actions: <Widget>[
          SizedBox(
            width: 5.0,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(UIData.payment);
            },
            icon: Icon(actionFirstIcon),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      drawer: showDrawer ? CommonDrawer() : null,
      body: bodyData,
      floatingActionButton: showFAB
          ? CustomFloat(
              builder: centerDocked
                  ? Text(
                      "5",
                      style: TextStyle(color: Colors.white, fontSize: 10.0),
                    )
                  : null,
              icon: floatingIcon,
              qrCallback: this.floatingCallback,
            )
          : null,
      floatingActionButtonLocation: centerDocked
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: showBottomNav ? myBottomBar(context) : null,
    );
  }
}
