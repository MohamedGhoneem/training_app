import 'package:flutter/material.dart';

abstract class BaseUserType {
  String? getTitle();

  Widget? getRegisterView();

  Widget? getProfileView();

  Widget? getHomeView();

  Widget? getUserData();
}
