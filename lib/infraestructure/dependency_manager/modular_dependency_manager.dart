import 'dart:async';

import 'package:apph2/infraestructure/dependency_manager/dm.dart';
import 'package:flutter_modular/flutter_modular.dart';


///
/// Dependency manager implementation with Modular package
///
class ModularDependencyManager implements DependencyManager {
  ModularDependencyManager._();

  static ModularDependencyManager? _instance;

  ///
  /// Static instance for DM
  ///
  static ModularDependencyManager i() {
    _instance ??= ModularDependencyManager._();

    return _instance!;
  }

  @override
  T get<T extends Object>() {
    return Modular.get<T>();
  }

  @override
  bool dispose<T extends Object>() {
    return Modular.dispose<T>();
  }

  @override
  FutureOr<T> getAsync<T extends Object>() {
    return Modular.getAsync<T>();
  }
}
