import 'package:flutter/widgets.dart';

import 'navigation_arguments.dart';

///
/// Interface for navigation
///
abstract class Navigation {
  /// Returns the [NavigationArguments] instance
  NavigationArguments get args;

  /// Returns the current route path
  String get currentPath;

  ///
  /// Push a named route to the stack
  ///
  Future<T?> pushNamed<T extends Object?>(
    Object path, {
    Object? arguments,
    bool? forRoot,
  });

  ///
  /// Push and replace a named route
  ///
  Future<Object?> pushReplacementNamed(
    Object path, {
    Object? arguments,
    bool? forRoot,
  });

  ///
  /// Push a named route and remove routes according to [predicate]
  ///
  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    Object path,
    bool Function(Route) predicate, {
    Object? arguments,
    bool? forRoot,
  });

  ///
  /// Removes all previous routes and navigate to a route.
  ///
  void navigate(Object path, {dynamic arguments});

  ///
  /// Pop the current route out of the stack
  ///
  void pop<T extends Object>({T? response});

  ///
  /// Calls pop repeatedly on the navigator until the predicate returns true.
  ///
  void popUntil(bool Function(Route<dynamic>) predicate);

  ///
  /// Return true if route can pop
  ///
  bool canPop();

  /// Pop the current route off the navigator and navigate to a route
  Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
    bool forRoot = false,
  });

  ///
  /// Consults the current route's [Route.willPop] method, and acts accordingly, potentially popping the route as a result;
  /// returns whether the pop request should be considered handled.
  ///
  Future<bool> maybePop<T extends Object?>([T? result]);

  /// Register a closure to be called when the object notifies its listeners.
  void addListener(VoidCallback listener);

  /// Remove a previously registered closure from the list of closures that the
  /// object notifies.
  void removeListener(VoidCallback listener);

  ///
  /// Current navigation history
  ///
  List<String> get history;
}
