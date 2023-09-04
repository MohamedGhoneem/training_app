import 'package:app_fundamentals/app_fundamentals.dart';
import 'package:flutter/material.dart';

import '../features/home/view/main_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [routeObserver],

      title: 'Flutter rxdart_bloc example',
      // home: BlocProvider(bloc: ProductsBloc(), child: const ProductsView()),
      home: const MainView(),
    );
  }
}
