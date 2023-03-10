import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:neon_ui_design/screens/InductionScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: const InductionScreen(),
    );
  }
}
