import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'metodos_pago_ajustes_widget.dart' show MetodosPagoAjustesWidget;
import 'package:flutter/material.dart';

class MetodosPagoAjustesModel
    extends FlutterFlowModel<MetodosPagoAjustesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for numeroTarjetaField widget.
  FocusNode? numeroTarjetaFieldFocusNode;
  TextEditingController? numeroTarjetaFieldTextController;
  String? Function(BuildContext, String?)?
      numeroTarjetaFieldTextControllerValidator;
  // State field(s) for expField widget.
  FocusNode? expFieldFocusNode;
  TextEditingController? expFieldTextController;
  String? Function(BuildContext, String?)? expFieldTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for ccvField widget.
  FocusNode? ccvFieldFocusNode;
  TextEditingController? ccvFieldTextController;
  String? Function(BuildContext, String?)? ccvFieldTextControllerValidator;
  // State field(s) for NombreTarjetaField widget.
  FocusNode? nombreTarjetaFieldFocusNode;
  TextEditingController? nombreTarjetaFieldTextController;
  String? Function(BuildContext, String?)?
      nombreTarjetaFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    numeroTarjetaFieldFocusNode?.dispose();
    numeroTarjetaFieldTextController?.dispose();

    expFieldFocusNode?.dispose();
    expFieldTextController?.dispose();

    ccvFieldFocusNode?.dispose();
    ccvFieldTextController?.dispose();

    nombreTarjetaFieldFocusNode?.dispose();
    nombreTarjetaFieldTextController?.dispose();
  }
}
