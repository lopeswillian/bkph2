import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/theme/theme_factory.dart';
import 'package:apph2/views/login/login_page.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'base_app_module.dart';
import 'infraestructure/infraestructure.dart';
import 'theme/theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const H2AppBar(
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF166FED),
              Color(0xFF00092A),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(27),
              topRight: Radius.circular(27),
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: const LoginPage(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(ModularApp(module: BaseAppModule(), child: const MyApp()));
  // runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final RouteObserver<PageRoute> _routeObserver;

  @override
  void initState() {
    super.initState();
    _routeObserver = DM.get<RouteObserver<PageRoute>>();

    List<NavigatorObserver> observers = [
      _routeObserver,
    ];

    Modular.setObservers(observers);

    Modular.setInitialRoute(Modular.initialRoute);
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Nav.navigate(BaseAppModuleRouting.root),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig.init().config(constraints, orientation);
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'H2 APP',
              routeInformationParser: Modular.routeInformationParser,
              routerDelegate: Modular.routerDelegate,
              theme: ThemeFactory.light(),
              darkTheme: ThemeFactory.dark(),
              builder: (context, child) {
                return BotToastInit()(context, child);
              },
            );
          },
        );
      },
    );
  }
}
