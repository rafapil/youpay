import 'package:flutter/material.dart';
import 'package:youpay/shared/themes/themes.dart';
import 'package:youpay/shared/widgets/set_label_buttons/set_label_buttons.dart';

class ButtonSheet extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secundaryLabel;
  final VoidCallback secundaryOnPressed;
  final String title;
  final String subTitle;
  const ButtonSheet(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secundaryLabel,
      required this.secundaryOnPressed,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.shape,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Text.rich(
                        TextSpan(
                          text: title,
                          style: TextStyles.buttonBoldHeading,
                          children: [
                            TextSpan(
                              text: "\n$subTitle",
                              style: TextStyles.buttonHeading,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 1,
                      color: AppColors.stroke,
                    ),
                    //
                    SetLabelButtons(
                        enablePrimaryColor: true,
                        primaryLabel: primaryLabel,
                        primaryOnPressed: primaryOnPressed,
                        secundaryLabel: secundaryLabel,
                        secundaryOnPressed: secundaryOnPressed),
                    // SizedBox(
                    //   height: 2.0,
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
