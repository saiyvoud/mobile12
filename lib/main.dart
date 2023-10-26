import 'package:flutter/material.dart';
import 'package:mobileapp12/page/dashboard.dart';
import 'package:mobileapp12/page/home/home.dart';
import 'package:mobileapp12/page/widget-non-callback/container_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
