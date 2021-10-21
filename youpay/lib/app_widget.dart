import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youpay/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:youpay/modules/insert_boleto/insert_boleto.dart';
// import 'package:youpay/modules/home/home_page.dart';
// import 'package:youpay/modules/splash/splash_page.dart';

// import 'modules/login/login_page.dart';
import 'modules/modules.dart';
import 'shared/themes/themes.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'You Pay',
      theme: ThemeData(
          primarySwatch: Colors.orange, primaryColor: AppColors.primary),
      initialRoute: '/spalsh',
      routes: {
        '/spalsh': (context) => SplashPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/barcode_scanner': (context) => BarcodeScannerPage(),
        '/insert_boleto': (context) => InsertBoletoPage(),
      },
    );
  }
}
