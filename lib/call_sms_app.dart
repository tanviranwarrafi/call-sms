import 'package:call_and_sms/constants/app_constants.dart';
import 'package:call_and_sms/screens/home_screen.dart';
import 'package:call_and_sms/themes/colors.dart';
import 'package:call_and_sms/utils/keys.dart';
import 'package:flutter/material.dart';

class CallAndSmsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: primary,
      title: APP_NAME,
      home: HomeScreen(),
      navigatorKey: navigatorKey,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldMessengerKey,
    );
  }
}
