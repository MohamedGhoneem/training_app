import 'package:untitled/core/user_types/user_strategy_type.dart';

class UserType {
   bool isCandidate() {
    return UserStrategyType().baseUserType == UserStrategyType().typeMap[0];
    // return 'AppConstants.selectedType == AppConstants.FREE_WORK_DOCUMENT_TYPE';
  }

   bool isVoter() {
    return UserStrategyType().baseUserType == UserStrategyType().typeMap[1];
    // return 'AppConstants.selectedType == AppConstants.COMMERCIAL_REGISTRATION_TYPE';
  }

   bool isManager() {
    return UserStrategyType().baseUserType == UserStrategyType().typeMap[2];
    // return 'AppConstants.selectedType == AppConstants.COMMERCIAL_REGISTRATION_TYPE';
  }

   bool isSupervisor() {
    return UserStrategyType().baseUserType == UserStrategyType().typeMap[3];
    // return 'AppConstants.selectedType == AppConstants.FREE_WORK_DOCUMENT_TYPE';
  }

   bool isTeamLead() {
    return UserStrategyType().baseUserType == UserStrategyType().typeMap[4];
    // return 'AppConstants.selectedType == AppConstants.COMMERCIAL_REGISTRATION_TYPE';
  }
}
