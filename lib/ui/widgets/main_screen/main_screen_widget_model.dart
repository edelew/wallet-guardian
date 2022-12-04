import 'package:flutter/material.dart';

class MainScreenWidgetModel extends ChangeNotifier {}

class MainScreenWidgetModelProvider extends InheritedNotifier {
  final MainScreenWidgetModel model;
  const MainScreenWidgetModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(
          key: key,
          notifier: model,
          child: child,
        );

  static MainScreenWidgetModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<MainScreenWidgetModelProvider>();
  }

  static MainScreenWidgetModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<
            MainScreenWidgetModelProvider>()
        ?.widget;
    return widget is MainScreenWidgetModelProvider ? widget : null;
  }
}
