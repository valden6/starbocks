import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:starbock/screens/home_screen.dart';

void main() {
  runApp(StarbocksApp());
}

class StarbocksApp extends StatefulWidget {
  @override
  _StarbocksAppState createState() => _StarbocksAppState();
}

class _StarbocksAppState extends State<StarbocksApp> {

  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   textTheme: GoogleFonts.notoSansTextTheme(Theme.of(context).textTheme)
      // ),
      home: HomeScreen()
    );
  }
}