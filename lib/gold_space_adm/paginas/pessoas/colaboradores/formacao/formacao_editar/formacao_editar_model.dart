import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'formacao_editar_widget.dart' show FormacaoEditarWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FormacaoEditarModel extends FlutterFlowModel<FormacaoEditarWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<CColaboradoresFormacaoAcademicaRow>? deucertoCopy;
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
  final diplomaKey = GlobalKey();
  FocusNode? diplomaFocusNode;
  TextEditingController? diplomaTextController;
  String? diplomaSelectedOption;
  String? Function(BuildContext, String?)? diplomaTextControllerValidator;
  String? _diplomaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É necessário preeencher o grau de ensino.';
    }
    if (val != diplomaSelectedOption) {
      return 'Selecione o seu grau de ensino.';
    }

    return null;
  }

  // State field(s) for areaEstudo widget.
  FocusNode? areaEstudoFocusNode;
  TextEditingController? areaEstudoTextController;
  String? Function(BuildContext, String?)? areaEstudoTextControllerValidator;
  String? _areaEstudoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É necessário preeencher a área de estudo.';
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

  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Button widget.
  List<CColaboradoresFormacaoAcademicaRow>? deucerto2;

  @override
  void initState(BuildContext context) {
    instituicaoTextControllerValidator = _instituicaoTextControllerValidator;
    diplomaTextControllerValidator = _diplomaTextControllerValidator;
    areaEstudoTextControllerValidator = _areaEstudoTextControllerValidator;
    dataInicioTextControllerValidator = _dataInicioTextControllerValidator;
    dataFimTextControllerValidator = _dataFimTextControllerValidator;
  }

  @override
  void dispose() {
    instituicaoFocusNode?.dispose();
    instituicaoTextController?.dispose();

    diplomaFocusNode?.dispose();

    areaEstudoFocusNode?.dispose();
    areaEstudoTextController?.dispose();

    dataInicioFocusNode?.dispose();
    dataInicioTextController?.dispose();

    dataFimFocusNode?.dispose();
    dataFimTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();
  }
}
