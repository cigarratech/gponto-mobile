import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gponto/utils/constants.dart';

import 'components/circle_progress.dart';
import 'components/total_hours.dart';
import 'components/simulator.dart';
import 'components/records.dart';
import 'components/settings.dart';
import 'components/bottom_information.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'GPonto',
          style: GoogleFonts.archivo(
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: screenSize.height * 0.14,
                color: kPrimaryColor,
              ),
              CircleProgress(.5),
            ],
          ),
          TotalHours(),
          Simulator(),
          Records(),
          Settings(),
          Spacer(),
          BottomInformation(),
          Spacer(),
        ],
      ),
    );
  }
}
