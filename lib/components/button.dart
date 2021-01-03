import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gponto/utils/constants.dart';

class Button extends StatelessWidget {
  final String text;

  Button({@required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      height: 50,
      width: size.width - 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 16,
              color: Colors.black.withOpacity(.25),
            )
          ]),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w700,
          color: kBackgroundColor,
          fontSize: 24,
        ),
      ),
    );
  }
}
