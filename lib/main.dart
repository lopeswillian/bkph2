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
import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide View;
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
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
  int currentTab = 1;
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
    const BottomNavigationBarItem(
      icon: Icon(null),
      label: 'Início',
      tooltip: 'Início',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(
          bottom: Dimension.xs.height,
          top: Dimension.xs.height,
        ),
        child: const Icon(Icons.paid_outlined),
      ),
      label: 'H2 Pay',
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
      state.user != null ? const H2HomePage() : const LoginPage(),
      state.user != null ? const H2PayHomePage() : const LoginPage(),
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
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: _onItemTapped,
        selectedIndex: currentTab,
        items: _options,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: !isKeyboardVisible
          ? GestureDetector(
              onTap: () => _onItemTapped(1),
              child: Container(
                padding: EdgeInsets.only(
                  top: const Dimension(1.5).height,
                  left: Dimension.md.width,
                  right: Dimension.md.width,
                ),
                decoration: const BoxDecoration(
                  color: AppThemeBase.colorPrimaryDarkest,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(9999.0),
                    topRight: Radius.circular(9999.0),
                  ),
                ),
                child: SvgPicture.string(
                    '''<svg width="41" height="40" viewBox="0 0 41 40" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="H2"><path d="M3.71262 13.5973C4.16794 12.3146 4.88595 11.0318 5.70027 9.83186C11.0415 2.39197 21.8116 0.422339 29.7709 5.47054C37.6427 10.5187 39.7267 20.6979 34.3854 28.2206C30.7691 33.2688 24.7011 35.8343 18.7294 35.4039L15.656 39.6825C23.7117 41.048 32.1263 37.9694 37.0123 31.2164C43.5269 22.0634 40.9963 9.57531 31.312 3.41816C21.6277 -2.74727 8.41468 -0.347305 1.9001 8.80567C1.17334 9.83186 0.542895 10.9408 1.33514e-05 12.058L3.71262 13.5973Z" fill="white"/><path d="M20.9576 31.006C13.4001 31.006 7.30473 25.3522 7.30473 18.3942C7.30473 11.4363 13.4001 5.78245 20.9576 5.78245C23.7763 5.78245 26.4188 6.5649 28.6033 7.95313C26.1457 6.1274 23.054 5 19.6804 5C11.6649 5 5.20835 11.2596 5.20835 19.0841C5.20835 26.9087 11.6737 33 19.6804 33C25.9608 33 31.4219 29.0877 33.3333 23.6106C31.237 27.9603 26.5069 31.006 20.9488 31.006H20.9576Z" fill="#166FED"/></g></svg>'''),
              ),
            )
          : null,
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
