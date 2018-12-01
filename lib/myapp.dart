import 'package:flutter/material.dart';

import 'package:flutter_uikit/ui/page/login/login_page.dart';
import 'package:flutter_uikit/ui/page/profile/profile_page.dart';
import 'package:flutter_uikit/ui/page/shopping/shopping_page.dart';
import 'package:flutter_uikit/ui/page/shopping/product_detail_page.dart';
import 'package:flutter_uikit/ui/page/payment/credit_card_page.dart';
import 'package:flutter_uikit/ui/page/notfound/notfound_page.dart';

import 'package:flutter_uikit/utils/uidata.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
    title: UIData.appName,
    theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: UIData.quickFont,
        primarySwatch: Colors.amber),
    debugShowCheckedModeBanner: false,
    showPerformanceOverlay: false,
    /* localizationsDelegates: [
        const TranslationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ], */
    /* supportedLocales: [
        const Locale("en", "US"),
        const Locale("hi", "IN"),
      ], */
    initialRoute: UIData.initialRoute,

    //routes
    routes: <String, WidgetBuilder>{
      UIData.initialRoute: (BuildContext context) => LoginPage(),
      UIData.home: (BuildContext context) => ShoppingOnePage(),
      UIData.payment: (BuildContext context) => CreditCardPage(),
      UIData.details: (BuildContext context) => ProductDetailPage(),
      UIData.profile: (BuildContext context) => ProfilePage()
    },
    onUnknownRoute: (RouteSettings rs) => new MaterialPageRoute(
          builder: (context) => new NotFoundPage(
                appTitle: UIData.routeNotFound,
                icon: FontAwesomeIcons.solidSmile,
                title: UIData.routeNotFound,
                message: "Under Development",
                iconColor: Colors.green,
              ),
        ),
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
