import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'zapatos_mujeres_widget.dart' show ZapatosMujeresWidget;
import 'package:flutter/material.dart';

class ZapatosMujeresModel extends FlutterFlowModel<ZapatosMujeresWidget> {
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
