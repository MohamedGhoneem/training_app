import 'package:flutter/material.dart';
import 'package:responsive_screen_type/responsive_screen_type.dart';
import 'package:untitled/core/user_types/user_type.dart';

import '../../../../core/user_types/user_strategy_type.dart';
import 'main_view_mobile.dart';


class MainView extends StatelessWidget {
  MainView({Key? key}) : super(key: key);
  final UserStrategyType userStrategyType = UserStrategyType();

  @override
  Widget build(BuildContext context) {
    return  const ScreenTypeLayout(
      mobile: MainViewMobile()
      // mobile: userStrategyType.baseUserType?.getRegisterView() ?? Container()
    );
  }
}
