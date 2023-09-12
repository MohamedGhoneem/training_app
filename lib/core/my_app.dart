import 'package:app_fundamentals/app_fundamentals.dart';
import 'package:flutter/material.dart';
import 'package:untitled/features/products/data/repo/products_repo_impl.dart';

import '../features/home/presentation/view/main_view.dart';

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
