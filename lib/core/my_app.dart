import 'package:flutter/material.dart';

import '../features/home/presentation/pages/main_view.dart';


GlobalKey<NavigatorState> navigatorKey=GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // navigatorObservers: [ChuckerFlutter.navigatorObserver],
      // navigatorObservers: [routeObserver],
      navigatorKey: navigatorKey,

      title: 'Flutter rxdart_bloc example',
      home: MainView(),
    );
  }
}
