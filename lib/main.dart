import 'package:call_and_sms/call_sms_app.dart';
import 'package:call_and_sms/utils/app_utils.dart';
import 'package:flutter/material.dart';

import 'di.dart' as dependency_injection;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependency_injection.init();
  await portraitMode();
  runApp(CallAndSmsApp());
}
