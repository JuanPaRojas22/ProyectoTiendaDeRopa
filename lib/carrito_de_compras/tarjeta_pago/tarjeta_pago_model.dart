import '/componentes/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tarjeta_pago_widget.dart' show TarjetaPagoWidget;
import 'package:flutter/material.dart';

class TarjetaPagoModel extends FlutterFlowModel<TarjetaPagoWidget> {
  ///  Local state fields for this page.

  double? costoEnvio = 7.0;

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
