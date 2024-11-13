import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gold_space_adm/geral/cabecalhos/cabecalho/cabecalho_widget.dart';
import '/gold_space_adm/geral/cabecalhos/menu_lateral/menu_lateral_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'colab_historico_widget.dart' show ColabHistoricoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ColabHistoricoModel extends FlutterFlowModel<ColabHistoricoWidget> {
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
  // State field(s) for txtCPF widget.
  FocusNode? txtCPFFocusNode;
  TextEditingController? txtCPFTextController;
  final txtCPFMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? txtCPFTextControllerValidator;
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
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

    txtCPFFocusNode?.dispose();
    txtCPFTextController?.dispose();

    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtCargoFocusNode?.dispose();
    txtCargoTextController?.dispose();

    txtGestorFocusNode?.dispose();
    txtGestorTextController?.dispose();

    txtEmpresaFocusNode?.dispose();
    txtEmpresaTextController?.dispose();

    paginatedDataTableController.dispose();
  }

  /// Action blocks.
  Future loadingAll(
    BuildContext context, {
    required String? codigo,
    required String? nome,
    required String? cpf,
    required String? cargo,
    required String? gestor,
    required String? empresa,
    bool? ativo,
  }) async {
    List<dynamic>? resultadoApi;

    resultadoApi = await actions.getColaboradoresAll(
      context,
      codigo!,
      nome!,
      cpf!,
      cargo!,
      gestor!,
      empresa!,
      valueOrDefault<bool>(
        ativo,
        true,
      ),
    );
    apiResult = resultadoApi!.toList().cast<dynamic>();
  }
}
