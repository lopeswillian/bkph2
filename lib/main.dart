import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/firebase_options.dart';
import 'package:apph2/theme/theme_factory.dart';
import 'package:apph2/theme/widgets/custom_bottom_navigation.dart';
import 'package:apph2/views/h2pay/h2pay_home_page.dart';
import 'package:apph2/views/home/home_page.dart';
import 'package:apph2/views/login/login_page.dart';
import 'package:apph2/views/login/login_state.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:apph2/views/product/list_product_page.dart';
import 'package:apph2/views/product/product_viewmodel.dart';
import 'package:apph2/views/rewards/rewards_page.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

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

class _MyHomePageState extends State<MyHomePage> with View<LoginViewModel> {
  bool isAuth = false;
  int currentTab = 2;
  bool isKeyboardVisible = false;
  late StreamSubscription<bool> keyboardSubscription;

  @override
  void initState() {
    super.initState();

    var keyboardVisibilityController = KeyboardVisibilityController();

    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      setState(() {
        isKeyboardVisible = visible;
      });
    });
  }

  @override
  void dispose() {
    keyboardSubscription.cancel();
    super.dispose();
  }

  static final List<BottomNavigationBarItem> _options = [
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(
          bottom: Dimension.xs.height,
          top: Dimension.xs.height,
        ),
        child: const FaIcon(FontAwesomeIcons.coins),
      ),
      label: 'Produtos',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(
          bottom: Dimension.xs.height,
          top: Dimension.xs.height,
        ),
        child: const FaIcon(FontAwesomeIcons.gift),
      ),
      label: 'Rewards',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(
          bottom: Dimension.xs.height,
          top: Dimension.xs.height,
        ),
        child: const Icon(null),
      ),
      label: 'Início',
      tooltip: 'Início',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(
          bottom: Dimension.xs.height,
          top: Dimension.xs.height,
        ),
        child: const FaIcon(FontAwesomeIcons.circleDollar),
      ),
      label: 'H2 Pay',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(
          bottom: Dimension.xs.height,
          top: Dimension.xs.height,
        ),
        child: const FaIcon(FontAwesomeIcons.comments),
      ),
      label: 'Chat',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel, LoginState>(
      viewModel: viewModel,
      buildWhen: (previous, current) =>
          previous.user != current.user || previous.token != current.token,
      builder: _buildPage,
    );
  }

  Widget _buildPage(BuildContext context, LoginState state) {
    final pages = [
      const ListProductPage(),
      state.user != null ? const RewardsPage() : const LoginPage(),
      state.user != null ? const H2HomePage() : const LoginPage(),
      state.user != null ? const H2PayHomePage() : const LoginPage(),
      Center(
        child: Text(
          'Em breve...',
          style: context.text.body1,
        ),
      )
    ];

    return Scaffold(
      appBar: const H2AppBar(),
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
                  child: pages[currentTab],
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: CustomBottomNavigationBar(
          onTap: _onItemTapped,
          selectedIndex: currentTab,
          items: _options,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      currentTab = index;
    });
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  var prefs = await SharedPreferences.getInstance();
  prefs.setString("key", jsonEncode(message.data));
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
}

/// Create a [AndroidNotificationChannel] for heads up notifications
late AndroidNotificationChannel channel;

/// Initialize the [FlutterLocalNotificationsPlugin] package.
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Hive.initFlutter();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  if (!Platform.isIOS) {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    final fcmToken = await FirebaseMessaging.instance.getToken();

    if (kDebugMode) {
      print('token: $fcmToken');
    }

    channel = const AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      importance: Importance.high,
    );

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    if (Platform.isIOS) {
      NotificationSettings settings =
          await FirebaseMessaging.instance.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      if (kDebugMode) {
        print('User granted permission: ${settings.authorizationStatus}');
      }
    }
  }

  runApp(ModularApp(module: BaseAppModule(), child: const MyApp()));
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
    Modular.get<LoginViewModel>().isAuth();
    Modular.get<ProductViewModel>().getProducts();
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
              title: 'H2 Club',
              routeInformationParser: Modular.routeInformationParser,
              routerDelegate: Modular.routerDelegate,
              theme: ThemeFactory.light(),
              // darkTheme: ThemeFactory.dark(),
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
