import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/records_simulator_screen.dart';
import 'components/inter_work_screen.dart';

class SimulatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            'Simulador',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: 'Registros',
              ),
              Tab(
                text: 'Interjornada',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          RecordsSimulatorScreen(),
          InterWordScreen(),
        ]),
      ),
    );
  }
}
