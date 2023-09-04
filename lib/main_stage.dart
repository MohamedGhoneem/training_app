import 'package:flutter/material.dart';
import 'package:untitled/core/my_app.dart';
import 'package:flavorizer_config/flavorizer_config.dart';
import 'core/flavor_variables_model.dart';

Future main() async {
  final flavorVariablesModel = FlavorVariablesModel()
    ..title = 'Stage App'
    ..baseUrl = 'https//www.flavor.com.stage'
    ..description = 'Stage Flavor';
  FlavorizerConfig(
      appTitle: 'Stage',
      flavor: Flavors.stage,
      variables: flavorVariablesModel.toJson());
  return runApp(const MyApp());
}
