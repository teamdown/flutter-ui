import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/widgets/common_divider.dart';
import 'package:flutter_uikit/ui/widgets/common_scaffold.dart';
import 'package:flutter_uikit/ui/widgets/profile_tile.dart';

import 'package:flutter_uikit/ui/widgets/profile_card.dart';
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
          ProfileCard(
            icon: Icons.person,
            title: 'Prénom',
            subtitle: 'Ny Hasinavalona',
          ),
          ProfileCard(
            icon: Icons.person,
            title: 'Nom',
            subtitle: 'Randriantsarafara',
          ),
          ProfileCard(
            icon: Icons.date_range,
            title: 'Date de naissance',
            subtitle: '25 Juillet 1997',
          ),
          ProfileCard(
            icon: Icons.email,
            title: 'Adresse e-mail',
            subtitle: 'randriantsarafaranyhasinavalon@gmail.com',
          ),
        ],
      );

  Widget locationColumn() => Column(
        children: <Widget>[
          ProfileCard(
            icon: Icons.gps_fixed,
            title: 'Province',
            subtitle: 'Antananarivo',
          ),
          ProfileCard(
            icon: Icons.location_on,
            title: 'Région',
            subtitle: 'Antananarivo',
          ),
          ProfileCard(
            icon: Icons.location_city,
            title: 'Quartier',
            subtitle: 'Anjanahary',
          )
        ],
      );

  Widget bodyData() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          profileColumn(),
          CommonDivider(),
          accountColumn(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: CommonDivider(),
          ),
          locationColumn(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: CommonDivider(),
          ),
        ],
      ),
    );
  }

  Widget _scaffold() => CommonScaffold(
        appTitle: UIData.profilPageName,
        bodyData: bodyData(),
        showFAB: true,
        showDrawer: true,
        floatingIcon: Icons.edit,
      );

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return _scaffold();
  }
}
