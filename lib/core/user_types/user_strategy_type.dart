import 'package:untitled/features/users_types/candidate.dart';
import 'package:untitled/features/users_types/manager.dart';
import 'package:untitled/features/users_types/supervisor.dart';
import 'package:untitled/features/users_types/team_lead.dart';
import 'package:untitled/features/users_types/voter.dart';
import 'base_user_type.dart';

class UserStrategyType {
  BaseUserType? baseUserType; // Property to store the current user type

  // Singleton instance of UserStrategyType
  static final UserStrategyType _instance = UserStrategyType._internal();

  // Factory constructor that returns the singleton instance
  factory UserStrategyType() {
    return _instance;
  }

  // Private constructor
  UserStrategyType._internal() {
    _fillTypeMap(); // Initialize the typeMap
  }

  // Map to store user types
  Map<int, BaseUserType> typeMap = {};

  // Method to fill the typeMap with user types
  _fillTypeMap() {
    typeMap[0] = Candidate(); // Assign the Candidate type to index 0
    typeMap[1] = Voter(); // Assign the Voter type to index 1
    typeMap[2] = Manager();
    typeMap[3] = Supervisor();
    typeMap[4] = TeamLead();
  }

  // Method to get the user type based on the given value
  setUserType(int value) {
    baseUserType = typeMap[value]; // Set the current user type
  }
}