import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  /// Navigates to a new route.
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  /// Navigates to a new route and replaces the current route.
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  /// Navigates to a new route and removes all previous routes until the predicate returns true.
  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  /// Pops the current route off the navigator.
  void pop() => Navigator.of(this).pop();
}
