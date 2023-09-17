import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootWidget extends StatefulWidget {
  late String title ;
   RootWidget({super.key , required this.title});

  @override
  State<RootWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
