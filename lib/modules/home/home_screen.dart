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
      body: LayoutBuilder(
        builder: (ctx, constraints) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          height: constraints.maxHeight * .15,
                        ),
                        CircleProgress(.5),
                      ],
                    ),
                    TotalHours(),
                    Simulator(),
                    Records(),
                    Settings(),
                  ],
                ),
              ),
              BottomInformation(),
              SizedBox(height: 8),
            ],
          );
        },
      ),
    );
  }
}
