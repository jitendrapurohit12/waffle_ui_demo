import 'package:flutter/material.dart';
import 'package:waffle_ui_demo/pages/landing_page.dart';

main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Waffle UI Demo',
      home: LandingPage(),
    );
  }
}
