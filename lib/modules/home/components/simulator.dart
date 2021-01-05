import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gponto/utils/app_routes.dart';
import 'package:gponto/utils/constants.dart';

class Simulator extends StatelessWidget {
  const Simulator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutes.SIMULATOR);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 2,
        ),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/calculator.svg'),
            VerticalDivider(
              color: kLightTextColor,
              thickness: 1,
              width: 15,
              endIndent: 15,
              indent: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Simulador',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: kTextColor,
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Simular o registro de ponto',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF919191),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            SvgPicture.asset('assets/icons/chevron-right.svg'),
          ],
        ),
      ),
    );
  }
}
