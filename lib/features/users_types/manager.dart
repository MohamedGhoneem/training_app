import 'package:flutter/material.dart';
import 'package:untitled/features/home/presentation/view/manger_register_mobile_view.dart';
import '../../core/user_types/base_user_type.dart';

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
    // TODO: implement getTitle
    throw UnimplementedError();
  }

  @override
  Widget? getHomeView() {
    // TODO: implement getRegisterFields
    throw UnimplementedError();
  }

  @override
  Widget? getUserData() {
    // TODO: implement getProfileFields
    throw UnimplementedError();
  }
}
