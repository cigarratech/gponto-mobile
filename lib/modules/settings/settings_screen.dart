import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gponto/utils/constants.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/arrow-left.svg'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Configurações',
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/check.svg'),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            trailing: Text(
              '08:48 - 1h Intervalo',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 14,
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            title: Text(
              'Escala',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 16,
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            subtitle: Text(
              'Escolha a sua escala de trabalho',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 13,
                  color: kSubtitleTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            trailing: Text(
              '16/12/2020',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 14,
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            title: Text(
              'Data Inicial',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 16,
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            subtitle: Text(
              'Selecione a data de início do trabalho',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 13,
                  color: kSubtitleTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            trailing: Text(
              '15/12/2021',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 14,
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            title: Text(
              'Data final',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 16,
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            subtitle: Text(
              'Selecione a data final do trabalho',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 13,
                  color: kSubtitleTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            trailing: Text(
              '10min',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 14,
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            title: Text(
              'Aviso (min)',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 16,
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            subtitle: Text(
              'Selecione quantos minutos quer ser avisado',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 13,
                  color: kSubtitleTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
