import 'package:call_and_sms/components/buttons/elevate_button.dart';
import 'package:call_and_sms/constants/app_constants.dart';
import 'package:call_and_sms/di.dart';
import 'package:call_and_sms/library/launchers.dart';
import 'package:call_and_sms/themes/colors.dart';
import 'package:call_and_sms/themes/text_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Call & SMS Tutorial')),
      body: Container(width: size.width, height: size.height, child: _screenView(context)),
    );
  }

  Widget _screenView(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      clipBehavior: Clip.antiAlias,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: [
        const SizedBox(height: 12),
        Text('Hello Devs 👋🏻', style: TextStyles.text20_500.copyWith(color: grey3)),
        const SizedBox(height: 02),
        Text('Welcome to My Tutorial', style: TextStyles.text22_600.copyWith(color: dark)),
        const SizedBox(height: 32),
        ElevateButton(label: 'Phone Call', onTap: () => sl<Launchers>().phoneCall(phone: SUPPORT_PHONE_NO)),
        const SizedBox(height: 24),
        ElevateButton(label: 'Send SMS', onTap: () => sl<Launchers>().launchSMS(phone: SUPPORT_PHONE_NO)),
        const SizedBox(height: 24),
        ElevateButton(label: 'Open Google Map', onTap: () => sl<Launchers>().launchInBrowser(url: MAP_URL)),
        const SizedBox(height: 24),
        ElevateButton(label: 'Open Email', onTap: () => sl<Launchers>().launchEmailApp(email: SUPPORT_EMAIL)),
        const SizedBox(height: 24),
        ElevateButton(label: 'Launch in Webview', onTap: () => sl<Launchers>().launchInWebView(url: MAP_URL)),
        const SizedBox(height: 24),
      ],
    );
  }
}
