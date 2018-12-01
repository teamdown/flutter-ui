import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class UIData {
  //routes
  static const String initialRoute = '/';
  static const String login = '/login';
  static const String registration = '/registration';
  static const String profile = '/profile';
  static const String home = '/home';
  static const String payment = '/payment';
  static const String details = '/details';
  static const String notFound = '/404';

  //strings
  static const String appName = 'Fresh Discount';
  static const String profilPageName = 'Profil';

  //fonts
  static const String quickFont = 'Quicksand';
  static const String ralewayFont = 'Raleway';
  static const String quickBoldFont = 'Quicksand_Bold.otf';
  static const String quickNormalFont = 'Quicksand_Book.otf';
  static const String quickLightFont = 'Quicksand_Light.otf';

  //images
  static const String imageDir = 'assets/images';
  static const String profileImage = '$imageDir/profile.jpg';

  static const String mainGreetingText = '$appName';


  //login 
  static const String loginGreetingText = 'Identifier vous pour continuer';
  static const String registrationGreetingText = 'Créer un compte pour continuer';
  
  static const String userNameLabel = "Nom d'utilisateur";
  static const String userNameHintText = "Taper votre adresse e-mail ou votre nom d'utilisateur";
  
  static const String passwordLabel = 'Mot de passe';
  static const String passwordHintText = 'Taper votre mot de passe';

  static const String confirmationLabel = "Confirmation";
  static const String confirmationHintText = 'Taper à nouveau votre mot de passe';
  
  static const String emailLabel = 'Adresse e-mail';
  static const String emailHintText = 'Taper votre mot de passe';

  static const String signIn = "S'Inscrire";
  static const String signUp = 'Créer un compte';
  

  //gneric
  static const String error = 'Error';
  static const String success = 'Success';
  static const String ok = 'OK';
  static const String forgot_password = 'Forgot Password?';
  static const String something_went_wrong = 'Something went wrong';
  static const String routeNotFound = 'Route not found';

  static const MaterialColor ui_kit_color = Colors.grey;

//colors
  static List<Color> kitGradients = [
    Colors.green,
    Colors.greenAccent.shade700,
    Colors.green,
  ];
  static List<Color> kitGradients2 = [
    Colors.cyan.shade600,
    Colors.blue.shade900
  ];

  //randomcolor
  static final Random _random = new Random();

  /// Returns a random color.
  static Color next() {
    return new Color(0xFF000000 + _random.nextInt(0x00FFFFFF));
  }
}
