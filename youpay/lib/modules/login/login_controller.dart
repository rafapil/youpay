import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:youpay/shared/auth/auth_controller.dart';
import 'package:youpay/shared/models/user_model.dart';

class LoginController {
  final _authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      final user =
          UserModel(name: response!.displayName!, photoUrl: response.photoUrl);
      print(response);
      _authController.setUser(context, user);
    } catch (error) {
      print(error);
      _authController.setUser(context, null);
    }
  }
}
