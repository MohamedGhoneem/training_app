import 'package:flutter/material.dart';
import 'package:untitled/core/user_types/base_user_type.dart';

class Candidate extends BaseUserType {
  @override
  String? getTitle() {
    return 'Candidate';
  }

  @override
  Widget? getRegisterView() {
    // TODO: implement getUserImage
    throw UnimplementedError();
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
