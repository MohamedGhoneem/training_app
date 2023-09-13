import 'package:flutter/material.dart';
import 'package:untitled/core/user_types/base_user_type.dart';

import '../home/presentation/pages/voter_register_mobile_view.dart';

class Voter extends BaseUserType {
  @override
  String? getTitle() {
    return 'Voter';
  }

  @override
  Widget? getRegisterView() {
    return const VoterRegisterMobileView();
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
