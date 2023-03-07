import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/features/start/presentation/pages/start_page.dart';
import 'features/bottom_nav/presentation/pages/bottom_nav_page.dart';
import 'features/splash/presentation/pages/splash_page.dart';
import 'package:easy_localization/easy_localization.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
      EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        child: MyApp(),
      )
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor:Colors.grey.shade700,
      ),
      home: BottomNavPage(0)
    );
  }
}