import 'package:flutter/material.dart';
import 'blog_registration/presentation/initial_routes.dart';

class PageRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Routes For Initial Landing Pages
      case LandingPage.routename:
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              return LandingPage();
            });
      case LoginScreen.routename:
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              return LoginScreen();
            });
      case CreateNewAccount.routename:
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              return CreateNewAccount();
            });
      case ForgotPassword.routename:
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              return ForgotPassword();
            });
    }
    return null;
  }
}
