import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ajustes_direcciones_widget.dart' show AjustesDireccionesWidget;
import 'package:flutter/material.dart';

class AjustesDireccionesModel
    extends FlutterFlowModel<AjustesDireccionesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for provinciaField widget.
  FocusNode? provinciaFieldFocusNode;
  TextEditingController? provinciaFieldTextController;
  String? Function(BuildContext, String?)?
      provinciaFieldTextControllerValidator;
  // State field(s) for cantonField widget.
  FocusNode? cantonFieldFocusNode;
  TextEditingController? cantonFieldTextController;
  String? Function(BuildContext, String?)? cantonFieldTextControllerValidator;
  // State field(s) for distritoField widget.
  FocusNode? distritoFieldFocusNode;
  TextEditingController? distritoFieldTextController;
  String? Function(BuildContext, String?)? distritoFieldTextControllerValidator;
  // State field(s) for direccionField widget.
  FocusNode? direccionFieldFocusNode;
  TextEditingController? direccionFieldTextController;
  String? Function(BuildContext, String?)?
      direccionFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    provinciaFieldFocusNode?.dispose();
    provinciaFieldTextController?.dispose();

    cantonFieldFocusNode?.dispose();
    cantonFieldTextController?.dispose();

    distritoFieldFocusNode?.dispose();
    distritoFieldTextController?.dispose();

    direccionFieldFocusNode?.dispose();
    direccionFieldTextController?.dispose();
  }
}
