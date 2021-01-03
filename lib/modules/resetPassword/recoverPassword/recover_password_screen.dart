import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gponto/utils/app_routes.dart';

import 'package:gponto/utils/constants.dart';

import '../../../components/input.dart';
import '../../../components/button.dart';
import '../../../components/containerClipper.dart';

class RecoverPasswordScreen extends StatelessWidget {
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
                      'Recuperar senha',
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
                      icon: FeatherIcons.mail,
                      inputType: TextInputType.emailAddress,
                      placeholder: 'E-mail',
                    ),
                    SizedBox(height: kDefaultPadding * 3 / 2),
                    Button(
                      text: 'Enviar',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.CODE_VALIDATOR);
                },
                child: Row(
                  children: [
                    Text(
                      'Inserir código',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    SvgPicture.asset(
                      'assets/icons/arrow-right.svg',
                      color: kPrimaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
