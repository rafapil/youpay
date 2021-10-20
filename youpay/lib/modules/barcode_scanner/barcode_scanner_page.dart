import 'package:flutter/material.dart';
import 'package:youpay/shared/themes/app_colors.dart';
import 'package:youpay/shared/themes/app_textstyle.dart';
import 'package:youpay/shared/widgets/button_sheet/button_sheet.dart';
// import 'package:youpay/shared/widgets/divider_vertical/divider_vertical_widget.dart';
// import 'package:youpay/shared/widgets/label_button/label_button.dart';
import 'package:youpay/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return ButtonSheet(
        primaryLabel: 'Escanear novamente',
        primaryOnPressed: () {},
        secundaryLabel: 'Digitar Novamente',
        secundaryOnPressed: () {},
        title: 'Não foi possível identificar um código de barras.',
        subTitle: 'Tente escanear novamente ou digite o codigo do seu boleto.');
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text(
              'Escaneie o código de barras do boleto',
              style: TextStyles.buttonBackground,
            ),
            // backbutton add here
            leading: BackButton(
              color: AppColors.background,
            ),
          ),
          //
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
              primaryLabel: 'Insira o código do boleto',
              primaryOnPressed: () {},
              secundaryLabel: 'Adicionar da galeria',
              secundaryOnPressed: () {}),
        ),
      ),
    );
  }
}
