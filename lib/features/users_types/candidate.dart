import 'package:flutter/material.dart';
import 'package:untitled/core/user_types/base_user_type.dart';

import '../home/presentation/pages/candidate_register_mobile_view.dart';

class Candidate extends BaseUserType {
  @override
  String? getTitle() {
    return 'Candidate';
  }

  @override
  Widget? getRegisterView() {
    return const CandidateRegisterMobileView();
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
