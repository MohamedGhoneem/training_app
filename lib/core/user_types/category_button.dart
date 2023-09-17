import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  late String title ;
  late Color backgroundColor;

  CategoryButton({super.key , required this.title , required this.backgroundColor} );

  @override
  Widget build(BuildContext context) {
    return Ink(child: Text(title , style:  TextStyle(color: backgroundColor),),);
  }
}
