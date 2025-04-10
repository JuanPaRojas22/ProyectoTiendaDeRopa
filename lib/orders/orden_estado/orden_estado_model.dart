import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'orden_estado_widget.dart' show OrdenEstadoWidget;
import 'package:flutter/material.dart';

class OrdenEstadoModel extends FlutterFlowModel<OrdenEstadoWidget> {
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
