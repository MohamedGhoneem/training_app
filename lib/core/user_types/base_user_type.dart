import 'package:flutter/material.dart';
import 'package:untitled/core/user_types/user_strategy_type.dart';

BaseUserType? baseUserType = UserStrategyType().getUserType(0);

abstract class BaseUserType {
  String? getTitle();

  Widget? getRegisterView();

  Widget? getProfileView();

  Widget? getHomeView();

  Widget? getUserData();
}
