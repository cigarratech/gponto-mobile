import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:gponto/utils/constants.dart';

class InterWordScreen extends StatefulWidget {
  const InterWordScreen({
    Key key,
  }) : super(key: key);

  @override
  _InterWordScreenState createState() => _InterWordScreenState();
}

class _InterWordScreenState extends State<InterWordScreen> {
  TimeOfDay exitHour;
  DateTime selectData;

  @override
  Widget build(BuildContext context) {
    final Size sizeScreen = MediaQuery.of(context).size;

    Future<void> _selectExitHour() async {
      final selectedHour = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );
      if (selectedHour == null) return;
      setState(() {
        exitHour = selectedHour;
      });
    }

    Future<void> _selectData() async {
      final selectedData = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2100),
      );
      if (selectedData == null) return;

      setState(() {
        selectData = selectedData;
      });
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Data:',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 14,
                color: kTextColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 4),
          InkWell(
            onTap: _selectData,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  selectData != null
                      ? DateFormat("dd/MM/yyyy").format(selectData)
                      : DateFormat("dd/MM/yyyy").format(DateTime.now()),
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: kTextColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'saída',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: kTextColor,
                  ),
                ),
              ),
              SizedBox(height: 4),
              InkWell(
                onTap: _selectExitHour,
                child: Container(
                  height: 50,
                  width: sizeScreen.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      exitHour != null
                          ? '${exitHour.format(context)}'
                          : TimeOfDay.now().format(context),
                      style: GoogleFonts.inter(
                        color: kTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 8),
          SizedBox(height: kDefaultPadding),
          Divider(color: kSubtitleTextColor, thickness: 1),
          SizedBox(height: kDefaultPadding),
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
                      'Data/hora',
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
                      'DSR:',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xFF464A50),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      '23/01/2020 - 11h00',
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
                      'Interjornada:',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xFF464A50),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      '22/01/2020 - 11h00',
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
