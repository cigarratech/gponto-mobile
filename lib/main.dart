import 'package:flutter/material.dart';
import 'package:gponto/utils/constants.dart';

import 'screens/signIn/signIn_screen.dart';
import 'screens/signUp/signUp_screen.dart';

import './utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GPonto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        AppRoutes.HOME: (ctx) => SignInScreen(),
        AppRoutes.SIGNIN: (ctx) => SignInScreen(),
        AppRoutes.SIGNUP: (ctx) => SignUpScreen(),
      },
    );
  }
}
