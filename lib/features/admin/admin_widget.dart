
import 'package:flutter/material.dart';

class AdminWidget extends StatelessWidget {
  late String title ;
  AdminWidget({super.key , required this.title});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
