import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../../utils/constants.dart';

class CircleProgress extends StatelessWidget {
  final double percentage;

  const CircleProgress(this.percentage);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kBackgroundColor,
        ),
        child: CircularPercentIndicator(
          backgroundColor: Color(0xFFE5E5E5),
          radius: MediaQuery.of(context).size.width * .45,
          lineWidth: 16,
          percent: .65,
          animation: true,
          center: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    '7:36',
                    style: GoogleFonts.archivo(
                      textStyle: TextStyle(
                        fontSize: 40,
                        color: kTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'Trabalho',
                    style: TextStyle(
                        color: kSubtitleTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          progressColor: Color(0xFF1149D9),
          circularStrokeCap: CircularStrokeCap.round,
        ),
      ),
    );

    // return Center(
    //   child: Container(
    //     width: sizeCircle,
    //     height: sizeCircle,
    //     child: Stack(
    //       children: [
    //         ShaderMask(
    //           shaderCallback: (rect) {
    //             return SweepGradient(
    //               startAngle: 0.0,
    //               endAngle: 3.14 * 2,
    //               stops: [percentage, percentage],
    //               center: Alignment.center,
    //               colors: [Color(0xFF1149D9), Color(0xFFE5E5E5)],
    //             ).createShader(rect);
    //           },
    //           child: Container(
    //             width: sizeCircle,
    //             height: sizeCircle,
    //             decoration: BoxDecoration(
    //               color: Color(0xFFE5E5E5),
    //               shape: BoxShape.circle,
    //             ),
    //           ),
    //         ),
    //         Center(
    //           child: Container(
    //             alignment: Alignment.center,
    //             width: sizeCircle - 25,
    //             height: sizeCircle - 25,
    //             decoration: BoxDecoration(
    //               color: kBackgroundColor,
    //               shape: BoxShape.circle,
    //             ),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   '7:36',
    //                   style: GoogleFonts.archivo(
    //                     textStyle: TextStyle(
    //                       fontSize: 40,
    //                       color: kTextColor,
    //                       fontWeight: FontWeight.w600,
    //                     ),
    //                   ),
    //                 ),
    //                 SizedBox(height: 8),
    //                 Text(
    //                   'Trabalho',
    //                   style: TextStyle(
    //                     color: Color(0xFF797E88),
    //                     fontSize: 18,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
