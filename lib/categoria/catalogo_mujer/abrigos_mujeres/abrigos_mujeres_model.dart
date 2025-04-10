import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'abrigos_mujeres_widget.dart' show AbrigosMujeresWidget;
import 'package:flutter/material.dart';

class AbrigosMujeresModel extends FlutterFlowModel<AbrigosMujeresWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NAVBAR component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
