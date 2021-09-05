import 'package:flutter/material.dart';
import 'package:youpay/modules/login/login_page.dart';
import 'package:youpay/modules/splash/splash_page.dart';
import 'package:youpay/shared/themes/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'You Pay',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          primaryColor: AppColors.primary),
      home: LoginPage(),
    );
  }
}
