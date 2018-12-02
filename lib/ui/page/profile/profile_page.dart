import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/widgets/common_divider.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';
import 'package:flutter_uikit/ui/widgets/profile_tile.dart';

import 'package:flutter_uikit/ui/widgets/profile_card.dart';
import 'package:flutter_uikit/ui/widgets/custom_card.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class ProfilePage extends StatelessWidget {
  var deviceSize;

  Widget profileColumn() => Container(
        height: deviceSize.height * 0.24,
        child: FittedBox(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ProfileTile(
                  title: "nyhara25",
                  subtitle: "Ny Hasinavalona Randriantsarafara",
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(40.0)),
                      border: new Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(UIData.profileImage),
                      foregroundColor: Colors.black,
                      radius: 30.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );

  Widget accountColumn() => Column(
        children: <Widget>[
          CardItem(icon: Icons.date_range, title: '25 Juillet 1997'),
          CardItem(
              icon: Icons.email,
              title: 'randriantsarafaranyhasinavalon@gmail.com'),
        ],
      );

  Widget locationColumn() => Column(
        children: <Widget>[
          CardItem(icon: Icons.phone, title: '+261 32 65 308 06'),
          CardItem(
            icon: Icons.gps_fixed,
            title: 'Antananarivo',
          ),
          CardItem(
            icon: Icons.location_on,
            title: 'Analamanga',
          ),
          CardItem(
            icon: Icons.location_city,
            title: 'Anjanahary',
          ),
          CardItem(
            icon: Icons.local_post_office,
            title: '101',
          ),
        ],
      );

  Widget bodyData(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          profileColumn(),         
          CommonDivider(),
          CustomCard(
            title: 'Informations',
            child: accountColumn(),
            buttonCallback: () {
              Navigator.of(context).pushNamed(UIData.editProfile);
            },
          ),
          CommonDivider(),
          CustomCard(
            title: 'Livraison',
            child: locationColumn(),
            buttonCallback: () {
              Navigator.of(context).pushNamed(UIData.editProfile);
            },
          ),
          CommonDivider(),
        ],
      ),
    );
  }

  Widget _scaffold(BuildContext context) => CommonScaffold(
        appTitle: UIData.profilPageName,
        bodyData: bodyData(context),
        showDrawer: true
      );

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return _scaffold(context);
  }
}
