import 'package:flutter/material.dart';
import '../../core/user_types/base_user_type.dart';
import '../home/presentation/pages/team_lead_register_mobile_view.dart';

class TeamLead extends BaseUserType {
  @override
  String? getTitle() {
    return 'TeamLead';
  }

  @override
  Widget? getRegisterView() {
    return const TeamLeadRegisterMobileView();
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
