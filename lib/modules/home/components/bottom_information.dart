import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:gponto/utils/constants.dart';

class BottomInformation extends StatelessWidget {
  const BottomInformation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.only(left: kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(24),
          topRight: Radius.circular(24),
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Entrada',
                style: GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: kTextColor,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '14:30',
                style: GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: kSubtitleTextColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Text(
                'Saída prevista',
                style: GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: kTextColor,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '00:18',
                style: GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: kSubtitleTextColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Text(
                'Infração',
                style: GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: kTextColor,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '01:30',
                style: GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: kSubtitleTextColor,
                ),
              ),
            ],
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: kPrimaryColor,
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
