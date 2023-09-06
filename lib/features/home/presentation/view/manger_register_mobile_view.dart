import 'package:flutter/material.dart';

import '../../../../core/user_types/user_strategy_type.dart';

class ManagerRegisterMobileView extends StatelessWidget {
  const ManagerRegisterMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: Center(child: Text(UserStrategyType().baseUserType?.getTitle() ?? "", style: const TextStyle(color: Colors.white),)),
      ),
    );
  }
}
