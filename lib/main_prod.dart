import 'package:flutter/material.dart';
import 'package:untitled/core/my_app.dart';

import 'core/flavor_variables_model.dart';
import 'package:flavorizer_config/flavorizer_config.dart';


Future main() async {
  final flavorVariablesModel = FlavorVariablesModel()
    ..title = 'Production App'
    ..baseUrl = 'https//www.flavor.com.prod'
    ..description = 'Production Flavor';
  FlavorizerConfig(
      appTitle: 'Production',
      flavor: Flavors.prod,
      variables: flavorVariablesModel.toJson());
  return runApp(const MyApp());
}