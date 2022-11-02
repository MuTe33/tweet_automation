import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tweet_automation/feature/app/view/app.dart';

Future<void> runAppWithInitialization() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}
