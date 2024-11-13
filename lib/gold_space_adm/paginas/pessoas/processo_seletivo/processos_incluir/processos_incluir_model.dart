import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'processos_incluir_widget.dart' show ProcessosIncluirWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ProcessosIncluirModel extends FlutterFlowModel<ProcessosIncluirWidget> {
  ///  Local state fields for this component.

  List<ColaboradorStruct> listColab = [];
  void addToListColab(ColaboradorStruct item) => listColab.add(item);
  void removeFromListColab(ColaboradorStruct item) => listColab.remove(item);
  void removeAtIndexFromListColab(int index) => listColab.removeAt(index);
  void insertAtIndexInListColab(int index, ColaboradorStruct item) =>
      listColab.insert(index, item);
  void updateListColabAtIndex(
          int index, Function(ColaboradorStruct) updateFn) =>
      listColab[index] = updateFn(listColab[index]);

  List<dynamic> listCargos = [];
  void addToListCargos(dynamic item) => listCargos.add(item);
  void removeFromListCargos(dynamic item) => listCargos.remove(item);
  void removeAtIndexFromListCargos(int index) => listCargos.removeAt(index);
  void insertAtIndexInListCargos(int index, dynamic item) =>
      listCargos.insert(index, item);
  void updateListCargosAtIndex(int index, Function(dynamic) updateFn) =>
      listCargos[index] = updateFn(listCargos[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Validate Form] action in Button widget.
  bool? valido;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  CProcessosRow? inserted;
  // State field(s) for txtData widget.
  FocusNode? txtDataFocusNode;
  TextEditingController? txtDataTextController;
  final txtDataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtDataTextControllerValidator;
  String? _txtDataTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for cbRS widget.
  String? cbRSValue;
  FormFieldController<String>? cbRSValueController;
  // State field(s) for cbMotivo widget.
  String? cbMotivoValue;
  FormFieldController<String>? cbMotivoValueController;
  // State field(s) for cbMotivo2 widget.
  String? cbMotivo2Value;
  FormFieldController<String>? cbMotivo2ValueController;
  // State field(s) for txtCodColab widget.
  FocusNode? txtCodColabFocusNode;
  TextEditingController? txtCodColabTextController;
  String? Function(BuildContext, String?)? txtCodColabTextControllerValidator;
  // State field(s) for txtColab widget.
  FocusNode? txtColabFocusNode;
  TextEditingController? txtColabTextController;
  String? Function(BuildContext, String?)? txtColabTextControllerValidator;
  // Stores action output result for [Bottom Sheet - Procura-Colaborador] action in Container widget.
  ColaboradorStruct? colab;
  // State field(s) for txtCodCidade widget.
  FocusNode? txtCodCidadeFocusNode;
  TextEditingController? txtCodCidadeTextController;
  String? Function(BuildContext, String?)? txtCodCidadeTextControllerValidator;
  String? _txtCodCidadeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtCidade widget.
  FocusNode? txtCidadeFocusNode;
  TextEditingController? txtCidadeTextController;
  String? Function(BuildContext, String?)? txtCidadeTextControllerValidator;
  // Stores action output result for [Bottom Sheet - Procura-Cidades] action in Container widget.
  CidadeStruct? colaborador;
  // State field(s) for txtCodCargo widget.
  FocusNode? txtCodCargoFocusNode;
  TextEditingController? txtCodCargoTextController;
  String? Function(BuildContext, String?)? txtCodCargoTextControllerValidator;
  String? _txtCodCargoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtCargo widget.
  FocusNode? txtCargoFocusNode;
  TextEditingController? txtCargoTextController;
  String? Function(BuildContext, String?)? txtCargoTextControllerValidator;
  // State field(s) for txtTipoCargo widget.
  FocusNode? txtTipoCargoFocusNode;
  TextEditingController? txtTipoCargoTextController;
  String? Function(BuildContext, String?)? txtTipoCargoTextControllerValidator;
  // Stores action output result for [Bottom Sheet - Procura-Cargos] action in Container widget.
  CargoStruct? cargo;
  // State field(s) for txtCodGestor widget.
  FocusNode? txtCodGestorFocusNode;
  TextEditingController? txtCodGestorTextController;
  String? Function(BuildContext, String?)? txtCodGestorTextControllerValidator;
  String? _txtCodGestorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtGestor widget.
  FocusNode? txtGestorFocusNode;
  TextEditingController? txtGestorTextController;
  String? Function(BuildContext, String?)? txtGestorTextControllerValidator;
  // Stores action output result for [Bottom Sheet - Procura-Gestor] action in Container widget.
  GestorStruct? gestor;
  // State field(s) for txtCodEmpresa widget.
  FocusNode? txtCodEmpresaFocusNode;
  TextEditingController? txtCodEmpresaTextController;
  String? Function(BuildContext, String?)? txtCodEmpresaTextControllerValidator;
  String? _txtCodEmpresaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtEmpresa widget.
  FocusNode? txtEmpresaFocusNode;
  TextEditingController? txtEmpresaTextController;
  String? Function(BuildContext, String?)? txtEmpresaTextControllerValidator;
  // Stores action output result for [Bottom Sheet - Procura-Empresa] action in Container widget.
  EmpresaStruct? empresa;
  // State field(s) for txtCodSetor widget.
  FocusNode? txtCodSetorFocusNode;
  TextEditingController? txtCodSetorTextController;
  String? Function(BuildContext, String?)? txtCodSetorTextControllerValidator;
  String? _txtCodSetorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtSetor widget.
  FocusNode? txtSetorFocusNode;
  TextEditingController? txtSetorTextController;
  String? Function(BuildContext, String?)? txtSetorTextControllerValidator;
  // Stores action output result for [Bottom Sheet - Procura-Setor] action in Container widget.
  SetorStruct? setor;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;

  @override
  void initState(BuildContext context) {
    txtDataTextControllerValidator = _txtDataTextControllerValidator;
    txtCodCidadeTextControllerValidator = _txtCodCidadeTextControllerValidator;
    txtCodCargoTextControllerValidator = _txtCodCargoTextControllerValidator;
    txtCodGestorTextControllerValidator = _txtCodGestorTextControllerValidator;
    txtCodEmpresaTextControllerValidator =
        _txtCodEmpresaTextControllerValidator;
    txtCodSetorTextControllerValidator = _txtCodSetorTextControllerValidator;
  }

  @override
  void dispose() {
    txtDataFocusNode?.dispose();
    txtDataTextController?.dispose();

    txtCodColabFocusNode?.dispose();
    txtCodColabTextController?.dispose();

    txtColabFocusNode?.dispose();
    txtColabTextController?.dispose();

    txtCodCidadeFocusNode?.dispose();
    txtCodCidadeTextController?.dispose();

    txtCidadeFocusNode?.dispose();
    txtCidadeTextController?.dispose();

    txtCodCargoFocusNode?.dispose();
    txtCodCargoTextController?.dispose();

    txtCargoFocusNode?.dispose();
    txtCargoTextController?.dispose();

    txtTipoCargoFocusNode?.dispose();
    txtTipoCargoTextController?.dispose();

    txtCodGestorFocusNode?.dispose();
    txtCodGestorTextController?.dispose();

    txtGestorFocusNode?.dispose();
    txtGestorTextController?.dispose();

    txtCodEmpresaFocusNode?.dispose();
    txtCodEmpresaTextController?.dispose();

    txtEmpresaFocusNode?.dispose();
    txtEmpresaTextController?.dispose();

    txtCodSetorFocusNode?.dispose();
    txtCodSetorTextController?.dispose();

    txtSetorFocusNode?.dispose();
    txtSetorTextController?.dispose();
  }
}
