import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/features/start/presentation/pages/start_page.dart';
import 'features/bottom_nav/presentation/pages/bottom_nav_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor:Colors.grey.shade700,
      ),
      home: StartPage(),
    );
  }
}