import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gponto/utils/constants.dart';

class RecordsSimulatorScreen extends StatelessWidget {
  const RecordsSimulatorScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size sizeScreen = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Escala:',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 14,
                color: kTextColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 4),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Expanded(
              child: Row(
                children: [
                  Text(
                    '08:48 - 1h Intervalo',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: kTextColor,
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    FeatherIcons.chevronDown,
                    color: kLightTextColor,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Entrada',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: kTextColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          '14:00',
                          style: GoogleFonts.inter(
                            color: kTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saída',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: kTextColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          '14:00',
                          style: GoogleFonts.inter(
                            color: kTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding),
          Divider(color: kSubtitleTextColor),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  'Resultado',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: kDefaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Descrição',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: kSubtitleTextColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      'Horas',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: kSubtitleTextColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Infração/ 10ª hora:',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xFF464A50),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      '01h00',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xFF464A50),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Horas trabalhadas:',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xFF464A50),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      '10h00',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xFF464A50),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saldo de horas:',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xFF464A50),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      '01h12',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xFF464A50),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          Spacer(),
          Center(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              height: 50,
              color: kPrimaryColor,
              minWidth: sizeScreen.width * 0.8,
              onPressed: () {},
              child: Text(
                'Calcular',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
