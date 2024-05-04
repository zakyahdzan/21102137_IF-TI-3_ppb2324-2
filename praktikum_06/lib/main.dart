import 'package:flutter/material.dart';
import 'package:praktikum_06/pages/main_page.dart';

import 'pages/on_boarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Saving App',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
     routes: {
      OnBoardingPage.nameRoute:(context) => OnBoardingPage(),
      MainPage.nameRoute:(context) => MainPage(),
     },
    );
  }
}

