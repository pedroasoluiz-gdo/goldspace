import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'procura_cargos_widget.dart' show ProcuraCargosWidget;
import 'package:flutter/material.dart';

class ProcuraCargosModel extends FlutterFlowModel<ProcuraCargosWidget> {
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtBuscaFocusNode?.dispose();
    txtBuscaTextController?.dispose();
  }

  /// Action blocks.
  Future loading(
    BuildContext context, {
    required String? descricao,
  }) async {
    List<dynamic>? resultado;

    resultado = await actions.getCargos(
      descricao,
    );
    apiResult = resultado!.toList().cast<dynamic>();
  }
}
