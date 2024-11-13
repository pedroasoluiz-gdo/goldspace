import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'colab_historico_editar_widget.dart' show ColabHistoricoEditarWidget;
import 'package:flutter/material.dart';

class ColabHistoricoEditarModel
    extends FlutterFlowModel<ColabHistoricoEditarWidget> {
  ///  Local state fields for this component.

  List<String> cidades = [];
  void addToCidades(String item) => cidades.add(item);
  void removeFromCidades(String item) => cidades.remove(item);
  void removeAtIndexFromCidades(int index) => cidades.removeAt(index);
  void insertAtIndexInCidades(int index, String item) =>
      cidades.insert(index, item);
  void updateCidadesAtIndex(int index, Function(String) updateFn) =>
      cidades[index] = updateFn(cidades[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Cidade)] action in Colab-Historico-Editar widget.
  ApiCallResponse? deuCerto;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? valido;
  // State field(s) for empresa widget.
  int? empresaValue;
  FormFieldController<int>? empresaValueController;
  // State field(s) for estado widget.
  String? estadoValue;
  FormFieldController<String>? estadoValueController;
  // Stores action output result for [Backend Call - API (Cidade)] action in estado widget.
  ApiCallResponse? resultApi;
  // State field(s) for cidade widget.
  int? cidadeValue;
  FormFieldController<int>? cidadeValueController;
  // State field(s) for setor widget.
  int? setorValue;
  FormFieldController<int>? setorValueController;
  // State field(s) for cargo widget.
  int? cargoValue;
  FormFieldController<int>? cargoValueController;
  // State field(s) for gestor widget.
  int? gestorValue;
  FormFieldController<int>? gestorValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
