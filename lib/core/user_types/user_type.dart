
class UserType {


  static isVoter() {
    return 'AppConstants.selectedType == AppConstants.COMMERCIAL_REGISTRATION_TYPE';
  }

  static isCandidate() {
    return 'AppConstants.selectedType == AppConstants.FREE_WORK_DOCUMENT_TYPE';
  }

}
