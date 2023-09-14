import 'package:app_fundamentals/app_fundamentals.dart';
import 'package:flutter/material.dart';

import '../features/home/presentation/pages/main_view.dart';
import 'package:network_implementation/network_implementation.dart';

import 'draggable_floating_action_button.dart';

late NetworkImplementation network;
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final GlobalKey parentKey = GlobalKey();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // navigatorObservers: [ChuckerFlutter.navigatorObserver],
      // navigatorObservers: [routeObserver],
      navigatorKey: navigatorKey,

      title: 'Flutter rxdart_bloc example',
      home: Stack(
        key: parentKey,
        children: [
          MainView(),


          DraggableFloatingActionButton(
            child: AppButton(
              title: 'Inspect',
              borderColor: Colors.brown,
              backgroundColor: Colors.brown,
              style: TextStyle(color: Colors.white, fontSize: 12),
              onTap: null,
              width: 50,
              height: 50,
              radius: 30,
            ),
            initialOffset: const Offset(120, 70),
            // parentKey: parentKey,
            onPressed: ()  => network.nirikshak
                .showNirikshak(navigatorKey.currentState!.context),
          ),

        ],
      ),
    );
  }
}
