import 'package:flutter/material.dart';
import 'package:foodorich_customer_app/food_page.dart';
import 'package:foodorich_customer_app/login_page.dart';
import 'package:foodorich_customer_app/restaurant_page.dart';
// import 'package:foodorich_customer_app/Splash_screen.dart';
// import 'package:foodorich_customer_app/login_page.dart';
import 'package:foodorich_customer_app/sign_up_page.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const App());
}
final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: theme,
      debugShowCheckedModeBanner: false,
      home: Food_Page(),
    );
  }
}