import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gponto/utils/constants.dart';

import '../../../components/input.dart';
import '../../../components/button.dart';
import '../../../components/containerClipper.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset('assets/icons/arrow-left.svg'),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: ContainerClipper(),
                child: Container(
                  decoration: BoxDecoration(color: kPrimaryColor),
                  height: size.height * 0.65,
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
                      'Alterar senha',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 30,
                          color: kBackgroundColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Input(
                      icon: FeatherIcons.lock,
                      inputType: TextInputType.emailAddress,
                      placeholder: 'Nova senha',
                    ),
                    Input(
                      icon: FeatherIcons.lock,
                      inputType: TextInputType.emailAddress,
                      placeholder: 'Confirmar senha',
                    ),
                    SizedBox(height: kDefaultPadding * 3 / 2),
                    Button(
                      text: 'Validar',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
