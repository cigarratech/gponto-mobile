import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gponto/utils/constants.dart';

class Input extends StatelessWidget {
  final String placeholder;
  final IconData icon;
  final TextInputType inputType;
  final bool passwordType;

  Input({
    @required this.placeholder,
    @required this.icon,
    this.inputType = TextInputType.text,
    this.passwordType = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(.25),
            offset: Offset(4, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.bottom,
        obscureText: passwordType,
        keyboardType: inputType,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: kLightTextColor),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: placeholder,
          hintStyle: GoogleFonts.inter(
            textStyle: TextStyle(
              color: kLightTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
