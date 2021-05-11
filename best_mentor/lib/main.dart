import 'package:best_mentor/ui/presentation/home/homepage.dart';
import 'package:flutter/material.dart';

import 'ui/style/color.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mentor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kMainColor,
        accentColor: lightGrey,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
