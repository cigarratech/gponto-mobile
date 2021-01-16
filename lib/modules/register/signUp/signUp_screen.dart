import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gponto/utils/constants.dart';

import '../../../components/input.dart';
import '../../../components/button.dart';
import '../../../components/containerClipper.dart';

class SignUpScreen extends StatelessWidget {
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
                        'Cadastro',
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
                        icon: FeatherIcons.user,
                        inputType: TextInputType.text,
                        placeholder: 'Nome',
                      ),
                      SizedBox(height: 8),
                      Input(
                        icon: FeatherIcons.mail,
                        inputType: TextInputType.emailAddress,
                        placeholder: 'E-mail',
                      ),
                      SizedBox(height: 8),
                      Input(
                        icon: FeatherIcons.lock,
                        passwordType: true,
                        placeholder: 'Senha',
                      ),
                      Spacer(),
                      Button(text: 'Cadastrar'),
                      SizedBox(height: 16),
                      Spacer(),
                      Spacer(),
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
