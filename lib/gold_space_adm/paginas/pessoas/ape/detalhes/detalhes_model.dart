import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'detalhes_widget.dart' show DetalhesWidget;
import 'package:flutter/material.dart';

class DetalhesModel extends FlutterFlowModel<DetalhesWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for selectView widget.
  FormFieldController<List<String>>? selectViewValueController;
  String? get selectViewValue => selectViewValueController?.value?.firstOrNull;
  set selectViewValue(String? val) =>
      selectViewValueController?.value = val != null ? [val] : [];
  // State field(s) for Questao5 widget.
  FormFieldController<String>? questao5ValueController1;
  // State field(s) for Questao5 widget.
  FormFieldController<String>? questao5ValueController2;
  // State field(s) for Questao5 widget.
  FormFieldController<String>? questao5ValueController3;
  // State field(s) for Questao5 widget.
  FormFieldController<String>? questao5ValueController4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get questao5Value1 => questao5ValueController1?.value;
  String? get questao5Value2 => questao5ValueController2?.value;
  String? get questao5Value3 => questao5ValueController3?.value;
  String? get questao5Value4 => questao5ValueController4?.value;
}
