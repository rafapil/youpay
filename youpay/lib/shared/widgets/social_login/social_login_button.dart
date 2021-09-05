import 'package:flutter/material.dart';
import 'package:youpay/shared/themes/themes.dart';

class SocialLoginButton extends StatelessWidget {
  //
  final VoidCallback onTap;

  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.fromBorderSide(
              BorderSide(
                color: AppColors.stroke,
              ),
            )),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.google),
                  SizedBox(width: 9.0),
                  Container(
                    width: 1,
                    height: 56,
                    color: AppColors.stroke,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Entrar com Google',
                    style: TextStyles.buttonBoldGray,
                  ),
                ],
              ),
            ),
            // for complet area
            Expanded(flex: 1, child: Container())
          ],
        ),
      ),
    );
  }
}
