import 'package:flutter/material.dart';
import 'package:untitled/core/flavor_variables_model.dart';
import 'package:untitled/core/my_app.dart';
import 'package:flavorizer_config/flavorizer_config.dart';

Future main() async {
  final flavorVariablesModel = FlavorVariablesModel()
    ..title = 'Development App'
    ..iconPath = 'assets/images/icon.png'
    ..appId = 'com.flavor.app'
    ..baseUrl = 'https//www.flavor.com'
    ..description = 'Production Flavor';
  FlavorizerConfig(
      title: 'Development',
      flavor: Flavors.dev,
      variables: flavorVariablesModel.toJson());
  return runApp(const MyApp());
}
