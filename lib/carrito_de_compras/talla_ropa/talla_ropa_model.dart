import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'talla_ropa_widget.dart' show TallaRopaWidget;
import 'package:flutter/material.dart';

class TallaRopaModel extends FlutterFlowModel<TallaRopaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TallaSAddress widget.
  FocusNode? tallaSAddressFocusNode;
  TextEditingController? tallaSAddressTextController;
  String? Function(BuildContext, String?)? tallaSAddressTextControllerValidator;
  // State field(s) for TallaMAddress widget.
  FocusNode? tallaMAddressFocusNode;
  TextEditingController? tallaMAddressTextController;
  String? Function(BuildContext, String?)? tallaMAddressTextControllerValidator;
  // State field(s) for TallaLAddress widget.
  FocusNode? tallaLAddressFocusNode;
  TextEditingController? tallaLAddressTextController;
  String? Function(BuildContext, String?)? tallaLAddressTextControllerValidator;
  // State field(s) for TallaXLAddress widget.
  FocusNode? tallaXLAddressFocusNode;
  TextEditingController? tallaXLAddressTextController;
  String? Function(BuildContext, String?)?
      tallaXLAddressTextControllerValidator;
  // State field(s) for Talla2XLAddress widget.
  FocusNode? talla2XLAddressFocusNode;
  TextEditingController? talla2XLAddressTextController;
  String? Function(BuildContext, String?)?
      talla2XLAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tallaSAddressFocusNode?.dispose();
    tallaSAddressTextController?.dispose();

    tallaMAddressFocusNode?.dispose();
    tallaMAddressTextController?.dispose();

    tallaLAddressFocusNode?.dispose();
    tallaLAddressTextController?.dispose();

    tallaXLAddressFocusNode?.dispose();
    tallaXLAddressTextController?.dispose();

    talla2XLAddressFocusNode?.dispose();
    talla2XLAddressTextController?.dispose();
  }
}
