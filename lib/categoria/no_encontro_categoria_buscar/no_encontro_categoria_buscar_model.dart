import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'no_encontro_categoria_buscar_widget.dart'
    show NoEncontroCategoriaBuscarWidget;
import 'package:flutter/material.dart';

class NoEncontroCategoriaBuscarModel
    extends FlutterFlowModel<NoEncontroCategoriaBuscarWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();
  }
}
