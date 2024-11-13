import '/flutter_flow/flutter_flow_util.dart';
import 'cad_novo_canal_widget.dart' show CadNovoCanalWidget;
import 'package:flutter/material.dart';

class CadNovoCanalModel extends FlutterFlowModel<CadNovoCanalWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  String? _descricaoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É necessário preencher o campo de descrição';
    }

    if (val.length < 3) {
      return 'Informe um registro de pelo menos 03 caracteres';
    }

    if (!RegExp('^[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÊÍÏÓÔÕÖÚÇÑ ]+\$')
        .hasMatch(val)) {
      return 'Informe apenas palavras';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    descricaoTextControllerValidator = _descricaoTextControllerValidator;
  }

  @override
  void dispose() {
    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();
  }
}
