import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'curso_editar_widget.dart' show CursoEditarWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CursoEditarModel extends FlutterFlowModel<CursoEditarWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<CColaboradoresCursosRow>? deucerto;
  // State field(s) for instituicao widget.
  FocusNode? instituicaoFocusNode;
  TextEditingController? instituicaoTextController;
  String? Function(BuildContext, String?)? instituicaoTextControllerValidator;
  String? _instituicaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É necessário preeencher a instituição de ensino.';
    }

    return null;
  }

  // State field(s) for diploma widget.
  FocusNode? diplomaFocusNode;
  TextEditingController? diplomaTextController;
  String? Function(BuildContext, String?)? diplomaTextControllerValidator;
  String? _diplomaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É necessário preeencher o grau de ensino.';
    }

    return null;
  }

  // State field(s) for dataInicio widget.
  FocusNode? dataInicioFocusNode;
  TextEditingController? dataInicioTextController;
  final dataInicioMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataInicioTextControllerValidator;
  String? _dataInicioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a data de início.';
    }

    return null;
  }

  // State field(s) for dataFim widget.
  FocusNode? dataFimFocusNode;
  TextEditingController? dataFimTextController;
  final dataFimMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataFimTextControllerValidator;
  String? _dataFimTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a data de fim (ou previsão).';
    }

    return null;
  }

  // State field(s) for tempo widget.
  FocusNode? tempoFocusNode;
  TextEditingController? tempoTextController;
  String? Function(BuildContext, String?)? tempoTextControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Button widget.
  List<CColaboradoresCursosRow>? deucerto3;

  @override
  void initState(BuildContext context) {
    instituicaoTextControllerValidator = _instituicaoTextControllerValidator;
    diplomaTextControllerValidator = _diplomaTextControllerValidator;
    dataInicioTextControllerValidator = _dataInicioTextControllerValidator;
    dataFimTextControllerValidator = _dataFimTextControllerValidator;
  }

  @override
  void dispose() {
    instituicaoFocusNode?.dispose();
    instituicaoTextController?.dispose();

    diplomaFocusNode?.dispose();
    diplomaTextController?.dispose();

    dataInicioFocusNode?.dispose();
    dataInicioTextController?.dispose();

    dataFimFocusNode?.dispose();
    dataFimTextController?.dispose();

    tempoFocusNode?.dispose();
    tempoTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();
  }
}
