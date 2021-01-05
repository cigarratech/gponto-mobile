import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gponto/utils/constants.dart';

class RecordItem extends StatelessWidget {
  const RecordItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      color: Colors.white,
      child: Row(
        children: [
          VerticalDivider(
            color: kErrorColor,
            width: 11,
            thickness: 11,
          ),
          SizedBox(width: kDefaultPadding),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/calendar-item.svg',
                    width: 24,
                    color: kTextColor,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '22/01/2021',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/clock.svg',
                    color: kTextColor,
                    width: 24,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '14:30 - 00:17',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Escala: 08:48 - 1h',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Saldo: - 00:01',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(width: kDefaultPadding),
        ],
      ),
    );
  }
}
