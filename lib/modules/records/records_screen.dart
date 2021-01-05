import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/record_item.dart';

class RecordsScreen extends StatelessWidget {
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
          'Registros',
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (cxt, i) {
          return Column(
            children: [
              RecordItem(),
              Divider(
                height: 1,
              ),
            ],
          );
        },
      ),
    );
  }
}
