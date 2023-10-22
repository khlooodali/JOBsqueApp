import 'package:findjop/auth/presention/screens/createaccount/view.dart';
import 'package:findjop/auth/presention/screens/login/view.dart';
import 'package:findjop/auth/presention/screens/profileandsettings.dart/view.dart';
import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/mainpage/view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../onboarding/splash/view.dart';

class AppContainer extends StatefulWidget {
  const AppContainer({super.key});

  @override
  State<AppContainer> createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  bool initial = true;

  String? usertoken;

  @override
  Widget build(BuildContext context) {
    if (initial) {
      SharedPreferences.getInstance().then((sharedValue) {
        setState(() {
          initial = false;
          usertoken = sharedValue.getString(token);
        });
      });
      return const CircularProgressIndicator();
    } else if (usertoken == null) {
      return const SplashView();
    } else {
      return const MainPageView();
    }
  }
}
