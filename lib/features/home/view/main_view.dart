import 'package:flutter/material.dart';
import 'package:responsive_screen_type/responsive_screen_type.dart';

import 'main_view_mobile.dart';


class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ScreenTypeLayout(
      mobile: MainViewMobile(),
    );
  }
}
