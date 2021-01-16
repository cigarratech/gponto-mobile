import 'package:flutter/material.dart';

import 'package:gponto/utils/constants.dart';

import 'modules/register/signIn/signIn_screen.dart';
import 'modules/register/signUp/signUp_screen.dart';
import 'modules/resetPassword/recoverPassword/recover_password_screen.dart';
import 'modules/resetPassword/codeValidator/code_validator_screen.dart';
import 'modules/resetPassword/changePassword/change_password_screen.dart';
import 'modules/home/home_screen.dart';
import 'modules/records/records_screen.dart';
import 'modules/simulator/simulator_screen.dart';
import 'modules/settings/settings_screen.dart';

import './utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: MaterialApp(
        title: 'GPonto',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.HOME: (ctx) => HomeScreen(),
          AppRoutes.SIGNIN: (ctx) => SignInScreen(),
          AppRoutes.SIGNUP: (ctx) => SignUpScreen(),
          AppRoutes.RECOVER_PASSWORD: (ctx) => RecoverPasswordScreen(),
          AppRoutes.CODE_VALIDATOR: (ctx) => CodeValidatorScreen(),
          AppRoutes.CHANGE_PASSWORD: (ctx) => ChangePasswordScreen(),
          AppRoutes.RECORS: (ctx) => RecordsScreen(),
          AppRoutes.SIMULATOR: (ctx) => SimulatorScreen(),
          AppRoutes.SETTINGS: (ctx) => SettingsScreen(),
        },
      ),
    );
  }
}
