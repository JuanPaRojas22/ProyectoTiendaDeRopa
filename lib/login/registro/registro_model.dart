import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/material.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for name_CreateTextField widget.
  FocusNode? nameCreateTextFieldFocusNode;
  TextEditingController? nameCreateTextFieldTextController;
  String? Function(BuildContext, String?)?
      nameCreateTextFieldTextControllerValidator;
  // State field(s) for emailAddress_CreateTextField widget.
  FocusNode? emailAddressCreateTextFieldFocusNode;
  TextEditingController? emailAddressCreateTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextFieldTextControllerValidator;
  // State field(s) for phoneNumber_CreateTextField widget.
  FocusNode? phoneNumberCreateTextFieldFocusNode;
  TextEditingController? phoneNumberCreateTextFieldTextController;
  late bool phoneNumberCreateTextFieldVisibility;
  String? Function(BuildContext, String?)?
      phoneNumberCreateTextFieldTextControllerValidator;
  // State field(s) for password_CreateTextField widget.
  FocusNode? passwordCreateTextFieldFocusNode;
  TextEditingController? passwordCreateTextFieldTextController;
  late bool passwordCreateTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextFieldTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    phoneNumberCreateTextFieldVisibility = false;
    passwordCreateTextFieldVisibility = false;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    nameCreateTextFieldFocusNode?.dispose();
    nameCreateTextFieldTextController?.dispose();

    emailAddressCreateTextFieldFocusNode?.dispose();
    emailAddressCreateTextFieldTextController?.dispose();

    phoneNumberCreateTextFieldFocusNode?.dispose();
    phoneNumberCreateTextFieldTextController?.dispose();

    passwordCreateTextFieldFocusNode?.dispose();
    passwordCreateTextFieldTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
