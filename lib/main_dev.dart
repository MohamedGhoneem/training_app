import 'package:flutter/material.dart';
import 'package:untitled/core/flavor_variables_model.dart';
import 'package:untitled/core/my_app.dart';
import 'package:flavorizer_config/flavorizer_config.dart';

Future main() async {
  final flavorVariablesModel = FlavorVariablesModel()
    ..title = 'Development App'
    ..baseUrl = 'https//www.flavor.com.dev'
    ..description = 'Development Flavor';
  FlavorizerConfig(
      appTitle: 'Development',
      flavor: Flavors.dev,
      variables: flavorVariablesModel.toJson());
  return runApp(const MyApp());
}
