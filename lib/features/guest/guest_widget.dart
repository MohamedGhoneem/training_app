import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GuestWidget extends StatelessWidget {
  late String title;

  GuestWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
