import 'package:flutter/material.dart';
import 'package:untitled/features/home/presentation/view/main_view.dart';

import '../../../../core/user_types/user_strategy_type.dart';

class SetUpViewMobile extends StatelessWidget {
  SetUpViewMobile({Key? key}) : super(key: key);

  final UserStrategyType userStrategyType = UserStrategyType();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(onPressed: (){
                userStrategyType.setUserType(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainView()),
                );
              }, child: const Text("Candidate")),
              ElevatedButton(onPressed: (){
                userStrategyType.setUserType(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainView()),
                );
              }, child: const Text("Voter")),
              ElevatedButton(onPressed: (){
                userStrategyType.setUserType(2);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainView()),
                );
              }, child: const Text("Manager")),
              ElevatedButton(onPressed: (){
                userStrategyType.setUserType(3);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainView()),
                );
              }, child: const Text("Supervisor")),
              ElevatedButton(onPressed: (){
                userStrategyType.setUserType(4);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainView()),
                );
              }, child: const Text("TeamLead")),
            ],
          ),
        ),
      ),
    );
  }
}
