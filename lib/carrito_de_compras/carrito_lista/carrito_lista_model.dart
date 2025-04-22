import '/componentes/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'carrito_lista_widget.dart' show CarritoListaWidget;
import 'package:flutter/material.dart';

class CarritoListaModel extends FlutterFlowModel<CarritoListaWidget> {
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
