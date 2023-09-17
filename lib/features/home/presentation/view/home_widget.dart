import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/features/admin/root_widget.dart';

import '../../../../core/user_types/base_user_type.dart';
import '../../../../core/user_types/user_strategy_type.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int userTypeValue = 0;
  UserStrategyType userStrategyType = UserStrategyType();

  late BaseUserType? userType;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return   Container(
      color: Colors.blue,
      height: 1000,
      width: 1000,
      child: Center(
          child: ListView(children: [
            InkWell(
              child: Container(
                height: 50,
                color: Colors.yellow,
                child: const Center(child: Text("Admin")),
              ),onTap: (){
              userTypeValue = 0;
              userType = userStrategyType.baseUserType;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RootWidget(title: userType?.getTitle() ?? '')),
              );
            },
            ),
            InkWell(
              child: Container(
                height: 50,
                color: Colors.orange,
                child: const Center(child: Text("Employee")),
              ),onTap: (){
              userTypeValue = 1;
              userType = userStrategyType.getUserType(userTypeValue);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RootWidget(title: userType?.getTitle() ?? '')),
              );
            },
            ),
            InkWell(
              child: Container(
                height: 50,
                color: Colors.deepOrangeAccent,
                child: const Center(child: Text("Guest")),
              ),onTap: (){
              userTypeValue = 2;
              userType = userStrategyType.getUserType(userTypeValue);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RootWidget(title: userType?.getTitle() ?? '')),
              );
            },
            ),
          ])),
    );
  }
}



