import '/componentes/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'categoria_especifica_hombre_widget.dart'
    show CategoriaEspecificaHombreWidget;
import 'package:flutter/material.dart';

class CategoriaEspecificaHombreModel
    extends FlutterFlowModel<CategoriaEspecificaHombreWidget> {
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
