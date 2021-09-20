import 'package:flutter/material.dart';
import 'package:youpay/shared/auth/auth_controller.dart';
import 'package:youpay/shared/themes/themes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authController = AuthController();
    _authController.currentUser(context);

    return Scaffold(
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.union)),
          Center(child: Image.asset(AppImages.logoFull)),
        ],
      ),
    );
  }
}
