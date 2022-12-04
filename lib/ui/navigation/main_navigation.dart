import 'package:flutter/material.dart';
import 'package:wallet_guardian/ui/widgets/form_screen/form_screen_widget.dart';
import 'package:wallet_guardian/ui/widgets/main_screen/main_screen_widget.dart';

abstract class MainNavigationRouteName {
  static const mainScreen = "/";
  static const formScreen = "/formScreen";
}

class MainNavigation {
  final initialRoute = MainNavigationRouteName.mainScreen;

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteName.mainScreen: (context) => const MainScreenWidget(),
    MainNavigationRouteName.formScreen: (context) => const FormScreenWidget(),
  };
}
