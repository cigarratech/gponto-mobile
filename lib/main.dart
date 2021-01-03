import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:gponto/utils/constants.dart';

import 'modules/register/signIn/signIn_screen.dart';
import 'modules/register/signUp/signUp_screen.dart';
import 'modules/resetPassword/recoverPassword/recover_password_screen.dart';
import 'modules/resetPassword/codeValidator/code_validator_screen.dart';
import 'modules/resetPassword/changePassword/change_password_screen.dart';

import './utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: kPrimaryColor,
        statusBarColor: kPrimaryColor,
        statusBarBrightness: Brightness.dark,
      ),
    );

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
        AppRoutes.RECOVER_PASSWORD: (ctx) => RecoverPasswordScreen(),
        AppRoutes.CODE_VALIDATOR: (ctx) => CodeValidatorScreen(),
        AppRoutes.CHANGE_PASSWORD: (ctx) => ChangePasswordScreen(),
      },
    );
  }
}
