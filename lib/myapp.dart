import 'package:flutter/material.dart';

import 'package:flutter_uikit/ui/page/login/login_page.dart';
import 'package:flutter_uikit/ui/page/registration/registration_page.dart';
import 'package:flutter_uikit/ui/page/profile/profile_page.dart';
import 'package:flutter_uikit/ui/page/profile/edit_page.dart';
import 'package:flutter_uikit/ui/page/shopping/shopping_page.dart';
import 'package:flutter_uikit/ui/page/cart/cart_page.dart';
import 'package:flutter_uikit/ui/page/shopping/product_detail_page.dart';
import 'package:flutter_uikit/ui/page/payment/credit_card_page.dart';
import 'package:flutter_uikit/ui/page/notfound/notfound_page.dart';

import 'package:flutter_uikit/utils/uidata.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
    title: UIData.appName,
    theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent,
        primarySwatch: Colors.amber),
    initialRoute: UIData.initialRoute,
    routes: <String, WidgetBuilder>{
      UIData.initialRoute: (BuildContext context) => LoginPage(),
      UIData.home: (BuildContext context) => ShoppingOnePage(),
      UIData.validation: (BuildContext context) => CartPage(),
      UIData.registration: (BuildContext context) => RegistrationPage(),
      UIData.payment: (BuildContext context) => CreditCardPage(),
      UIData.details: (BuildContext context) => ProductDetailPage(),
      UIData.profile: (BuildContext context) => ProfilePage(),
      UIData.editProfile: (BuildContext context) => EditPage(),
    },
    onUnknownRoute: (RouteSettings rs) => new MaterialPageRoute(
          builder: (context) => new NotFoundPage(
                appTitle: UIData.routeNotFound,
                icon: FontAwesomeIcons.solidSmile,
                title: UIData.routeNotFound,
                message: "Page not found",
                iconColor: Colors.green,
              ),
        ),
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
