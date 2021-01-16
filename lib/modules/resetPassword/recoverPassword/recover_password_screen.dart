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
      body: LayoutBuilder(
        builder: (ctx, constraints) {
          return Container(
            height: constraints.maxHeight,
            child: Stack(
              children: [
                ClipPath(
                  clipper: ContainerClipper(),
                  child: Container(
                    decoration: BoxDecoration(color: kPrimaryColor),
                    height: constraints.maxHeight * .7,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Image.asset('assets/images/clock.png'),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'GPonto',
                          style: GoogleFonts.archivo(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          'Gerenciando o seu tempo!',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Color(0xFFC7F8E7),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Recuperar senha ',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: 30,
                            color: kBackgroundColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Input(
                        icon: FeatherIcons.mail,
                        inputType: TextInputType.emailAddress,
                        placeholder: 'E-mail',
                      ),
                      Spacer(),
                      Button(text: 'Enviar'),
                      Spacer(),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.CODE_VALIDATOR);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                      Spacer(),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
