import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/models/travel.dart';
import 'package:travel_app_ui/pages/dashboard_page.dart';
import 'package:travel_app_ui/pages/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFFF5F5F5),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: DashboaradPage(),
      routes: {
        '/dashboard': (context) => DashboaradPage(),
        '/detail': (context) {
          Travel travel = ModalRoute.of(context)!.settings.arguments as Travel;
          return DetailPage(travel: travel);
        }
      },
    );
  }
}
