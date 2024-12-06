import 'package:bakery_shop/widget/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFA9E3D7),
        
      ),
      routes: {
        "/" : (context) => Splash(),
      },
    );
  }
}
