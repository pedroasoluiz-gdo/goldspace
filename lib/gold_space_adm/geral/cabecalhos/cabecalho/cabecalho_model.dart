import '/flutter_flow/flutter_flow_util.dart';
import 'cabecalho_widget.dart' show CabecalhoWidget;
import 'package:flutter/material.dart';

class CabecalhoModel extends FlutterFlowModel<CabecalhoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
