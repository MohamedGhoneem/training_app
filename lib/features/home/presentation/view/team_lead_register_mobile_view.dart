import 'package:flutter/material.dart';

import '../../../../core/user_types/user_strategy_type.dart';

class TeamLeadRegisterMobileView extends StatelessWidget {
  const TeamLeadRegisterMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Center(child: Text(UserStrategyType().baseUserType?.getTitle() ?? "", style: const TextStyle(color: Colors.white),)),
      ),
    );
  }
}
