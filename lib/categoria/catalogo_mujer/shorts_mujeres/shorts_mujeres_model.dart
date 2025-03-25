import '/components/ordenes_btn_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'shorts_mujeres_widget.dart' show ShortsMujeresWidget;
import 'package:flutter/material.dart';

class ShortsMujeresModel extends FlutterFlowModel<ShortsMujeresWidget> {
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
