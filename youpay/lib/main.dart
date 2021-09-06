import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:youpay/modules/login/login_page.dart';
// import 'package:youpay/modules/splash/splash_page.dart';
// import 'package:youpay/shared/themes/app_colors.dart';

import 'app_widget.dart';

void main() {
  runApp(AppFirebase());
}

class AppFirebase extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppFirebaseState createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return _SomethingWentWrong();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        }

        return _Loading();
      },
    );
  }

  _SomethingWentWrong() {
    // Check for errors
    return Material(
      child: Center(
        child: Text(
          'Não foi possível inicializar Verifique a conexão!',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

_Loading() {
  // Otherwise, show something whilst waiting for initialization to complete
  return Material(
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );
}
