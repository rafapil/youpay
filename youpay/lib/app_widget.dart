import 'package:flutter/material.dart';

import 'modules/login/login_page.dart';
import 'shared/themes/themes.dart';

class AppWidget extends StatelessWidget {
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
