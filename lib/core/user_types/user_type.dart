import 'package:untitled/core/user_types/user_strategy_type.dart';

class UserType {
  static isCandidate() {
    return UserStrategyType().baseUserType == UserStrategyType().typeMap[0];
    // return 'AppConstants.selectedType == AppConstants.FREE_WORK_DOCUMENT_TYPE';
  }

  static bool isVoter() {
    return UserStrategyType().baseUserType == UserStrategyType().typeMap[1];
    // return 'AppConstants.selectedType == AppConstants.COMMERCIAL_REGISTRATION_TYPE';
  }

  static isManager() {
    return UserStrategyType().baseUserType == UserStrategyType().typeMap[2];
    // return 'AppConstants.selectedType == AppConstants.COMMERCIAL_REGISTRATION_TYPE';
  }

  static isSupervisor() {
    return UserStrategyType().baseUserType == UserStrategyType().typeMap[3];
    // return 'AppConstants.selectedType == AppConstants.FREE_WORK_DOCUMENT_TYPE';
  }

  static isTeamLead() {
    return UserStrategyType().baseUserType == UserStrategyType().typeMap[4];
    // return 'AppConstants.selectedType == AppConstants.COMMERCIAL_REGISTRATION_TYPE';
  }
}
