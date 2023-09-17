import 'package:flutter/material.dart';

class EmployeeWidget extends StatelessWidget {
  late String title ;
  EmployeeWidget({super.key , required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
