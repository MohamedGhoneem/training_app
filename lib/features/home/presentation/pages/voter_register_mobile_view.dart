import 'package:flutter/material.dart';

import '../../../../core/user_types/user_strategy_type.dart';

class VoterRegisterMobileView extends StatelessWidget {
  const VoterRegisterMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: Center(child: Text(UserStrategyType().baseUserType?.getTitle() ?? "", style: const TextStyle(color: Colors.white),)),
      ),
    );
  }
}