import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'talla_ropa_widget.dart' show TallaRopaWidget;
import 'package:flutter/material.dart';

class TallaRopaModel extends FlutterFlowModel<TallaRopaWidget> {
  ///  Local state fields for this page.

  int? cantProducto = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for talla widget.
  String? tallaValue;
  FormFieldController<String>? tallaValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
