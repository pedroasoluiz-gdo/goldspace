import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'colab_historico_detalhes_widget.dart' show ColabHistoricoDetalhesWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class ColabHistoricoDetalhesModel
    extends FlutterFlowModel<ColabHistoricoDetalhesWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Bottom Sheet - Colab-Historico-Desativar] action in Button widget.
  bool? desligou;
  // State field(s) for selectView widget.
  FormFieldController<List<String>>? selectViewValueController;
  String? get selectViewValue => selectViewValueController?.value?.firstOrNull;
  set selectViewValue(String? val) =>
      selectViewValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Bottom Sheet - formacaoAcademica] action in Button widget.
  bool? cadastrou;
  Completer<List<CColaboradoresFormacaoAcademicaRow>>? requestCompleter2;
  // Stores action output result for [Bottom Sheet - formacaoEditar] action in IconButton widget.
  bool? editou;
  // Stores action output result for [Bottom Sheet - cursoIncluir] action in Button widget.
  bool? cadastrouCurso;
  Completer<List<CColaboradoresCursosRow>>? requestCompleter1;
  // Stores action output result for [Bottom Sheet - cursoEditar] action in Icon widget.
  bool? editou2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
