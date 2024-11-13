import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/gold_space_adm/geral/cabecalhos/cabecalho/cabecalho_widget.dart';
import '/gold_space_adm/geral/cabecalhos/menu_lateral/menu_lateral_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'cad_canais_widget.dart' show CadCanaisWidget;
import 'package:flutter/material.dart';

class CadCanaisModel extends FlutterFlowModel<CadCanaisWidget> {
  ///  Local state fields for this page.

  List<dynamic> apiResult = [];
  void addToApiResult(dynamic item) => apiResult.add(item);
  void removeFromApiResult(dynamic item) => apiResult.remove(item);
  void removeAtIndexFromApiResult(int index) => apiResult.removeAt(index);
  void insertAtIndexInApiResult(int index, dynamic item) =>
      apiResult.insert(index, item);
  void updateApiResultAtIndex(int index, Function(dynamic) updateFn) =>
      apiResult[index] = updateFn(apiResult[index]);

  bool status = true;

  ///  State fields for stateful widgets in this page.

  // Model for Menu-lateral component.
  late MenuLateralModel menuLateralModel;
  // Model for Cabecalho component.
  late CabecalhoModel cabecalhoModel;
  // State field(s) for buscador widget.
  String? buscadorValue;
  FormFieldController<String>? buscadorValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for Checkbox widget.
  Map<dynamic, bool> checkboxValueMap = {};
  List<dynamic> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    menuLateralModel.dispose();
    cabecalhoModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
  }

  /// Action blocks.
  Future loading(
    BuildContext context, {
    String? pesquisa,
    required String? campo,
  }) async {
    List<dynamic>? resultado;

    resultado = await actions.getCanaisAtracao(
      pesquisa,
      campo!,
    );
    apiResult = resultado!.toList().cast<dynamic>();
  }
}
