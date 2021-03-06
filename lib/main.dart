import 'package:flutter/material.dart';
import 'package:flutter_soular_app/src/pages/main_page.dart';

import 'src/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
