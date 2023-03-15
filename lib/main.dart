import 'package:flutter/material.dart';
import 'package:route_master_sample/app.dart';
import 'package:route_master_sample/get_it_configuration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(const App());
}
