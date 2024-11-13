import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gold_space_adm/geral/cabecalhos/cabecalho/cabecalho_widget.dart';
import '/gold_space_adm/geral/cabecalhos/menu_lateral/menu_lateral_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'processos_historico_widget.dart' show ProcessosHistoricoWidget;
import 'package:flutter/material.dart';

class ProcessosHistoricoModel
    extends FlutterFlowModel<ProcessosHistoricoWidget> {
  ///  Local state fields for this page.

  List<dynamic> apiResponse = [];
  void addToApiResponse(dynamic item) => apiResponse.add(item);
  void removeFromApiResponse(dynamic item) => apiResponse.remove(item);
  void removeAtIndexFromApiResponse(int index) => apiResponse.removeAt(index);
  void insertAtIndexInApiResponse(int index, dynamic item) =>
      apiResponse.insert(index, item);
  void updateApiResponseAtIndex(int index, Function(dynamic) updateFn) =>
      apiResponse[index] = updateFn(apiResponse[index]);

  String status = 'Aberta';

  bool visibleField = true;

  ///  State fields for stateful widgets in this page.

  // Model for Menu-lateral component.
  late MenuLateralModel menuLateralModel;
  // Model for Cabecalho component.
  late CabecalhoModel cabecalhoModel;
  // State field(s) for txtCodigo widget.
  FocusNode? txtCodigoFocusNode;
  TextEditingController? txtCodigoTextController;
  String? Function(BuildContext, String?)? txtCodigoTextControllerValidator;
  // State field(s) for txtCargo widget.
  FocusNode? txtCargoFocusNode;
  TextEditingController? txtCargoTextController;
  String? Function(BuildContext, String?)? txtCargoTextControllerValidator;
  // Stores action output result for [Bottom Sheet - Procura-Cargos] action in Container widget.
  CargoStruct? cargo;
  // State field(s) for txtGestor widget.
  FocusNode? txtGestorFocusNode;
  TextEditingController? txtGestorTextController;
  String? Function(BuildContext, String?)? txtGestorTextControllerValidator;
  // Stores action output result for [Bottom Sheet - Procura-Gestor] action in Container widget.
  GestorStruct? gestor;
  // State field(s) for txtEmpresa widget.
  FocusNode? txtEmpresaFocusNode;
  TextEditingController? txtEmpresaTextController;
  String? Function(BuildContext, String?)? txtEmpresaTextControllerValidator;
  // Stores action output result for [Bottom Sheet - Procura-Empresa] action in Container widget.
  EmpresaStruct? empresa;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    menuLateralModel.dispose();
    cabecalhoModel.dispose();
    txtCodigoFocusNode?.dispose();
    txtCodigoTextController?.dispose();

    txtCargoFocusNode?.dispose();
    txtCargoTextController?.dispose();

    txtGestorFocusNode?.dispose();
    txtGestorTextController?.dispose();

    txtEmpresaFocusNode?.dispose();
    txtEmpresaTextController?.dispose();

    paginatedDataTableController.dispose();
  }

  /// Action blocks.
  Future processosSeletivos(BuildContext context) async {
    List<dynamic>? resultado;

    resultado = await actions.getProcessosAll(
      txtCodigoTextController.text,
      txtCargoTextController.text,
      txtGestorTextController.text,
      txtEmpresaTextController.text,
      status,
    );
    apiResponse = resultado!.toList().cast<dynamic>();
  }
}
