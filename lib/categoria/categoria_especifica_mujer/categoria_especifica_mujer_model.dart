import '/componentes/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'categoria_especifica_mujer_widget.dart'
    show CategoriaEspecificaMujerWidget;
import 'package:flutter/material.dart';

class CategoriaEspecificaMujerModel
    extends FlutterFlowModel<CategoriaEspecificaMujerWidget> {
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
