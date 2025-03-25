import '/components/ordenes_btn_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'abrigos_mujeres_widget.dart' show AbrigosMujeresWidget;
import 'package:flutter/material.dart';

class AbrigosMujeresModel extends FlutterFlowModel<AbrigosMujeresWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ordenesBtn component.
  late OrdenesBtnModel ordenesBtnModel;

  @override
  void initState(BuildContext context) {
    ordenesBtnModel = createModel(context, () => OrdenesBtnModel());
  }

  @override
  void dispose() {
    ordenesBtnModel.dispose();
  }
}
