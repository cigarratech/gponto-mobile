import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gponto/utils/constants.dart';

import '../../components/input.dart';
import '../../components/button.dart';
import '../../components/containerClipper.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: ContainerClipper(),
                child: Container(
                  decoration: BoxDecoration(color: kPrimaryColor),
                  height: size.height * 0.55,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image.asset('assets/images/clock.png'),
                    Text(
                      'GPonto',
                      style: GoogleFonts.archivo(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Gerenciando o seu tempo!',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xFFC7F8E7),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: size.height / 3.5,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Text(
                      'Entrar',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 30,
                          color: kBackgroundColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Input(
                      icon: FeatherIcons.mail,
                      inputType: TextInputType.emailAddress,
                      placeholder: 'E-mail',
                    ),
                    Input(
                      icon: FeatherIcons.lock,
                      passwordType: true,
                      placeholder: 'Senha',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Button(),
          SizedBox(height: kDefaultPadding * 3 / 2),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Esqueci minha senha',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Criar Conta',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: kSubtitleTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
