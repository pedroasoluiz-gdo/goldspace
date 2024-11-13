import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'curso_incluir_widget.dart' show CursoIncluirWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CursoIncluirModel extends FlutterFlowModel<CursoIncluirWidget> {
  ///  Local state fields for this component.

  List<FFUploadedFile> docList = [];
  void addToDocList(FFUploadedFile item) => docList.add(item);
  void removeFromDocList(FFUploadedFile item) => docList.remove(item);
  void removeAtIndexFromDocList(int index) => docList.removeAt(index);
  void insertAtIndexInDocList(int index, FFUploadedFile item) =>
      docList.insert(index, item);
  void updateDocListAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      docList[index] = updateFn(docList[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Validate Form] action in Button widget.
  bool? valido;
  bool isDataUploading1 = false;
  List<FFUploadedFile> uploadedLocalFiles1 = [];
  List<String> uploadedFileUrls1 = [];

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  CColaboradoresCursosRow? deucerto;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  String? _nomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'É necessário preeencher a instituição de ensino.';
    }

    return null;
  }

  // State field(s) for organizacao widget.
  FocusNode? organizacaoFocusNode;
  TextEditingController? organizacaoTextController;
  String? Function(BuildContext, String?)? organizacaoTextControllerValidator;
  String? _organizacaoTextControllerValidator(
      BuildContext context, String? val) {
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
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {
    nomeTextControllerValidator = _nomeTextControllerValidator;
    organizacaoTextControllerValidator = _organizacaoTextControllerValidator;
    dataInicioTextControllerValidator = _dataInicioTextControllerValidator;
    dataFimTextControllerValidator = _dataFimTextControllerValidator;
  }

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    organizacaoFocusNode?.dispose();
    organizacaoTextController?.dispose();

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
