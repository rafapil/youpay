import 'package:flutter/material.dart';
import 'package:youpay/modules/barcode_scanner/barcode_scanner_controller.dart';
import 'package:youpay/modules/barcode_scanner/barcode_scanner_status.dart';
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
  final controller = BarcodeScannerController();

  @override
  void initState() {
    controller.getAvailableCameras();
    controller.statusNotifier.addListener(() {
      if (controller.status.hasBarcode) {
        Navigator.pushReplacementNamed(context, '/insert_boleto');
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: Stack(
        children: [
          //
          ValueListenableBuilder<BarcodeScannerStatus>(
            //
            valueListenable: controller.statusNotifier,
            builder: (_, status, __) {
              if (status.showCamera) {
                return Container(
                  child: status.cameraController!.buildPreview(),
                );
              } else {
                return Container();
              }
            },
          ),

          RotatedBox(
            quarterTurns: 1,
            child: Scaffold(
              backgroundColor: Colors.transparent,
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
          //
          //
          //
          ValueListenableBuilder<BarcodeScannerStatus>(
            //
            valueListenable: controller.statusNotifier,
            builder: (_, status, __) {
              if (status.showCamera) {
                return ButtonSheet(
                    primaryLabel: 'Escanear novamente',
                    primaryOnPressed: () {
                      controller.getAvailableCameras();
                    },
                    secundaryLabel: 'Digitar Novamente',
                    secundaryOnPressed: () {},
                    title: 'Não foi possível identificar um código de barras.',
                    subTitle:
                        'Tente escanear novamente ou digite o codigo do seu boleto.');
              } else {
                return Container();
              }
            },
          ),
          //
          //
        ],
      ),
    );
  }
}
