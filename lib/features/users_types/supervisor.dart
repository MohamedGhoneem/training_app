import 'package:flutter/material.dart';
import 'package:untitled/features/home/presentation/view/supervisor_register_mobile_view.dart';
import '../../core/user_types/base_user_type.dart';

class Supervisor extends BaseUserType {
  @override
  String? getTitle() {
    return 'Supervisor';
  }

  @override
  Widget? getRegisterView() {
    return const SupervisorRegisterMobileView();
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
