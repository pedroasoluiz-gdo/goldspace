import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'procura_cidades_widget.dart' show ProcuraCidadesWidget;
import 'package:flutter/material.dart';

class ProcuraCidadesModel extends FlutterFlowModel<ProcuraCidadesWidget> {
  ///  Local state fields for this component.

  List<dynamic> apiResult = [];
  void addToApiResult(dynamic item) => apiResult.add(item);
  void removeFromApiResult(dynamic item) => apiResult.remove(item);
  void removeAtIndexFromApiResult(int index) => apiResult.removeAt(index);
  void insertAtIndexInApiResult(int index, dynamic item) =>
      apiResult.insert(index, item);
  void updateApiResultAtIndex(int index, Function(dynamic) updateFn) =>
      apiResult[index] = updateFn(apiResult[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for txtBusca widget.
  FocusNode? txtBuscaFocusNode;
  TextEditingController? txtBuscaTextController;
  String? Function(BuildContext, String?)? txtBuscaTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtBuscaFocusNode?.dispose();
    txtBuscaTextController?.dispose();

    paginatedDataTableController.dispose();
  }

  /// Action blocks.
  Future loading(
    BuildContext context, {
    required String? descricao,
  }) async {
    List<dynamic>? resultado;

    resultado = await actions.getCidades(
      txtBuscaTextController.text,
    );
    apiResult = resultado!.toList().cast<dynamic>();
  }
}
