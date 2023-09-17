import 'package:flutter/material.dart';
import 'core/flavor_variables_model.dart';
import 'core/my_app.dart';
import 'package:flavorizer_config/flavorizer_config.dart';

void main() {
  final flavorVariablesModel = FlavorVariablesModel()
    ..title = 'Development App'
    ..baseUrl = 'https//www.flavor.com.dev'
    ..description = 'Development Flavor';
  FlavorizerConfig(
      appTitle: 'Development',
      flavor: Flavors.dev,
      variables: flavorVariablesModel.toJson());

  runApp(const MyApp());
}
