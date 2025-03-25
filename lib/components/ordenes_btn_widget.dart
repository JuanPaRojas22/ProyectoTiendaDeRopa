import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'ordenes_btn_model.dart';
export 'ordenes_btn_model.dart';

class OrdenesBtnWidget extends StatefulWidget {
  const OrdenesBtnWidget({super.key});

  @override
  State<OrdenesBtnWidget> createState() => _OrdenesBtnWidgetState();
}

class _OrdenesBtnWidgetState extends State<OrdenesBtnWidget> {
  late OrdenesBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrdenesBtnModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 6.0, 0.0),
        child: FFButtonWidget(
          onPressed: () async {
            context.pushNamed(OrdenDetallesWidget.routeName);
          },
          text: '',
          icon: Icon(
            Icons.receipt_sharp,
            size: 15.0,
          ),
          options: FFButtonOptions(
            width: 30.0,
            height: 32.0,
            padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: Color(0xFF7694A5),
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  letterSpacing: 0.0,
                ),
            elevation: 0.0,
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
      ),
    );
  }
}
