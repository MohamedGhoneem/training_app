import 'package:flutter/material.dart';
import '../../core/user_types/base_user_type.dart';
import '../home/presentation/pages/manger_register_mobile_view.dart';

class Manager extends BaseUserType {
  @override
  String? getTitle() {
    return 'Manager';
  }

  @override
  Widget? getRegisterView() {
    return const ManagerRegisterMobileView();
  }

  @override
  Widget? getProfileView() {
    throw UnimplementedError();
  }

  @override
  Widget? getHomeView() {
    throw UnimplementedError();
  }

  @override
  Widget? getUserData() {
    throw UnimplementedError();
  }
}
