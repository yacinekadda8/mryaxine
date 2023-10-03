import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';

import 'screens/components/Home Screen/home_screen.dart';

void main() {
  if (kIsWeb) {
    setPathUrlStrategy();
    runApp(
      const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData.dark().copyWith(
        primaryColor: kprimaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyLarge: const TextStyle(color: kbodyTextColor),
              bodyMedium: const TextStyle(color: kbodyTextColor),
              displayLarge: const TextStyle(color: kTextColorWhite),
              displayMedium: const TextStyle(color: kTextColorWhite),
            ),
      ),
      
      home: const HomeScreen(),
    );
  }
}
