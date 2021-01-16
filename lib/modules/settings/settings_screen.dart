import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gponto/utils/constants.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final Size sizeScreen = MediaQuery.of(context).size;

    void _openModal() async {
      await showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: sizeScreen.height * .60,
              child: Text(
                'Selecinar escala',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: kTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        },
      );
    }

    Future<void> _selectInitialDate() async {
      final selectedData = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2100),
      );
      if (selectedData == null) return;

      // setState(() {
      //   selectData = selectedData;
      // });
    }

    Future<void> _selectFinalDate() async {
      final selectedData = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2100),
      );
      if (selectedData == null) return;

      // setState(() {
      //   selectData = selectedData;
      // });
    }

    Future<void> _selectAlertHour() async {
      final selectedHour = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );
      if (selectedHour == null) return;
      // setState(() {
      //   exitHour = selectedHour;
      // });
    }

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
          InkWell(
            onTap: _openModal,
            child: ListTile(
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
          ),
          Divider(),
          InkWell(
            onTap: _selectInitialDate,
            child: ListTile(
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
          ),
          Divider(),
          InkWell(
            onTap: _selectFinalDate,
            child: ListTile(
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
          ),
          Divider(),
          InkWell(
            onTap: _selectAlertHour,
            child: ListTile(
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
          ),
          Divider(),
        ],
      ),
    );
  }
}
