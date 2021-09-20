import 'package:flutter/material.dart';
// import 'package:youpay/modules/home/home_page.dart';
// import 'package:youpay/modules/splash/splash_page.dart';

// import 'modules/login/login_page.dart';
import 'modules/modules.dart';
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
      initialRoute: '/spalsh',
      routes: {
        '/spalsh': (context) => SplashPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
