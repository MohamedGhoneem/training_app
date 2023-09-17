
import 'package:flutter/cupertino.dart';

import '../../core/user_types/base_user_type.dart';

class Voter extends BaseUserType {
  @override
  String? getTitle() {
    return 'Voter';
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
