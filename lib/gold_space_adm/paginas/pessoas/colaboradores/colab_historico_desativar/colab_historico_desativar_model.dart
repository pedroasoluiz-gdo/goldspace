import '/flutter_flow/flutter_flow_util.dart';
import 'colab_historico_desativar_widget.dart'
    show ColabHistoricoDesativarWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ColabHistoricoDesativarModel
    extends FlutterFlowModel<ColabHistoricoDesativarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtCodigo widget.
  FocusNode? txtCodigoFocusNode;
  TextEditingController? txtCodigoTextController;
  final txtCodigoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtCodigoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCodigoFocusNode?.dispose();
    txtCodigoTextController?.dispose();
  }
}
