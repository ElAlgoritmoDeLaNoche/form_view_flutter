import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:form_view_flutter/Pages/auth_page.dart';
import 'package:form_view_flutter/Pages/home_page.dart';
import 'package:form_view_flutter/Utils/palette.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Autenticación con Flutter y Firebase',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.muliTextTheme(),
          accentColor: Palette.darkOrange,
          appBarTheme: const AppBarTheme(
            brightness: Brightness.dark,
            color: Palette.darkBlue,
          ),
        ),
        home: AuthPage(),
        routes: {
          '/home': (BuildContext context) => HomePage(),
        },
      ),
    );
  }
}
