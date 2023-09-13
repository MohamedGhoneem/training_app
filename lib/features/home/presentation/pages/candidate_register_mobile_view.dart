import 'package:flutter/material.dart';
import 'package:untitled/core/user_types/user_strategy_type.dart';

class CandidateRegisterMobileView extends StatelessWidget {
  const CandidateRegisterMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        child: Center(child: Text(UserStrategyType().baseUserType?.getTitle() ?? "", style: const TextStyle(color: Colors.white),)),
      ),
    );
  }
}
