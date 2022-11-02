import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tweet_automation/feature/app/app.dart';

void main() {
  runAppWithInitialization();
}

Future<void> runAppWithInitialization() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}
