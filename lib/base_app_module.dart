import 'package:flutter_modular/flutter_modular.dart';

import 'base_app_module_bindings.dart';
import 'base_app_module_routing.dart';

///
/// Base app module definition
///
class BaseAppModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  List<Bind> get binds => [
        ...BaseAppModuleBindings.binds,
      ];

  @override
  List<ModularRoute> get routes => BaseAppModuleRouting.routes;
}
