import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/gold_space_adm/paginas/pessoas/processo_seletivo/processos_detalhes/processos_detalhes_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'processos_detalhes_widget.dart' show ProcessosDetalhesWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ProcessosDetalhesModel extends FlutterFlowModel<ProcessosDetalhesWidget> {
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

  List<CanaisXprocessosStruct> listCanais = [];
  void addToListCanais(CanaisXprocessosStruct item) => listCanais.add(item);
  void removeFromListCanais(CanaisXprocessosStruct item) =>
      listCanais.remove(item);
  void removeAtIndexFromListCanais(int index) => listCanais.removeAt(index);
  void insertAtIndexInListCanais(int index, CanaisXprocessosStruct item) =>
      listCanais.insert(index, item);
  void updateListCanaisAtIndex(
          int index, Function(CanaisXprocessosStruct) updateFn) =>
      listCanais[index] = updateFn(listCanais[index]);

  ProcessosStruct? processo;
  void updateProcessoStruct(Function(ProcessosStruct) updateFn) {
    updateFn(processo ??= ProcessosStruct());
  }

  dynamic records;

  bool variableState = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtIDProcesso widget.
  FocusNode? txtIDProcessoFocusNode;
  TextEditingController? txtIDProcessoTextController;
  String? Function(BuildContext, String?)? txtIDProcessoTextControllerValidator;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? valido;
  // Stores action output result for [Backend Call - API (CreateChanels)] action in Button widget.
  ApiCallResponse? apiResultmgd;
  // State field(s) for txtData widget.
  FocusNode? txtDataFocusNode;
  TextEditingController? txtDataTextController;
  final txtDataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtDataTextControllerValidator;
  // State field(s) for txtRS widget.
  FocusNode? txtRSFocusNode;
  TextEditingController? txtRSTextController;
  String? Function(BuildContext, String?)? txtRSTextControllerValidator;
  // State field(s) for txtMotivo widget.
  FocusNode? txtMotivoFocusNode;
  TextEditingController? txtMotivoTextController;
  String? Function(BuildContext, String?)? txtMotivoTextControllerValidator;
  // State field(s) for txtColab widget.
  FocusNode? txtColabFocusNode;
  TextEditingController? txtColabTextController;
  String? Function(BuildContext, String?)? txtColabTextControllerValidator;
  // State field(s) for txtCidade widget.
  FocusNode? txtCidadeFocusNode;
  TextEditingController? txtCidadeTextController;
  String? Function(BuildContext, String?)? txtCidadeTextControllerValidator;
  // State field(s) for txtCargo widget.
  FocusNode? txtCargoFocusNode;
  TextEditingController? txtCargoTextController;
  String? Function(BuildContext, String?)? txtCargoTextControllerValidator;
  // State field(s) for txtTipoCargo widget.
  FocusNode? txtTipoCargoFocusNode;
  TextEditingController? txtTipoCargoTextController;
  String? Function(BuildContext, String?)? txtTipoCargoTextControllerValidator;
  // State field(s) for txtGestor widget.
  FocusNode? txtGestorFocusNode;
  TextEditingController? txtGestorTextController;
  String? Function(BuildContext, String?)? txtGestorTextControllerValidator;
  // State field(s) for txtEmpresa widget.
  FocusNode? txtEmpresaFocusNode;
  TextEditingController? txtEmpresaTextController;
  String? Function(BuildContext, String?)? txtEmpresaTextControllerValidator;
  // State field(s) for txtSetor widget.
  FocusNode? txtSetorFocusNode;
  TextEditingController? txtSetorTextController;
  String? Function(BuildContext, String?)? txtSetorTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  // State field(s) for txtCPF widget.
  FocusNode? txtCPFFocusNode;
  TextEditingController? txtCPFTextController;
  final txtCPFMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? txtCPFTextControllerValidator;
  // State field(s) for cbContrato widget.
  String? cbContratoValue;
  FormFieldController<String>? cbContratoValueController;
  // State field(s) for txtProposta widget.
  FocusNode? txtPropostaFocusNode;
  TextEditingController? txtPropostaTextController;
  final txtPropostaMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtPropostaTextControllerValidator;
  // State field(s) for txtFechamento widget.
  FocusNode? txtFechamentoFocusNode;
  TextEditingController? txtFechamentoTextController;
  final txtFechamentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtFechamentoTextControllerValidator;
  // State field(s) for txtAdmissao widget.
  FocusNode? txtAdmissaoFocusNode;
  TextEditingController? txtAdmissaoTextController;
  final txtAdmissaoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txtAdmissaoTextControllerValidator;
  // State field(s) for txtObs widget.
  FocusNode? txtObsFocusNode;
  TextEditingController? txtObsTextController;
  String? Function(BuildContext, String?)? txtObsTextControllerValidator;
  // State field(s) for cbCanal widget.
  String? cbCanalValue;
  FormFieldController<String>? cbCanalValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtIDProcessoFocusNode?.dispose();
    txtIDProcessoTextController?.dispose();

    txtDataFocusNode?.dispose();
    txtDataTextController?.dispose();

    txtRSFocusNode?.dispose();
    txtRSTextController?.dispose();

    txtMotivoFocusNode?.dispose();
    txtMotivoTextController?.dispose();

    txtColabFocusNode?.dispose();
    txtColabTextController?.dispose();

    txtCidadeFocusNode?.dispose();
    txtCidadeTextController?.dispose();

    txtCargoFocusNode?.dispose();
    txtCargoTextController?.dispose();

    txtTipoCargoFocusNode?.dispose();
    txtTipoCargoTextController?.dispose();

    txtGestorFocusNode?.dispose();
    txtGestorTextController?.dispose();

    txtEmpresaFocusNode?.dispose();
    txtEmpresaTextController?.dispose();

    txtSetorFocusNode?.dispose();
    txtSetorTextController?.dispose();

    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtCPFFocusNode?.dispose();
    txtCPFTextController?.dispose();

    txtPropostaFocusNode?.dispose();
    txtPropostaTextController?.dispose();

    txtFechamentoFocusNode?.dispose();
    txtFechamentoTextController?.dispose();

    txtAdmissaoFocusNode?.dispose();
    txtAdmissaoTextController?.dispose();

    txtObsFocusNode?.dispose();
    txtObsTextController?.dispose();
  }

  /// Action blocks.
  Future loadingRecords(BuildContext context) async {
    dynamic processoObjCopy;

    processoObjCopy = await actions.getProcessosPorId(
      widget!.idProcesso,
    );
    records = processoObjCopy;
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return WebViewAware(
          child: AlertDialog(
            content: Text(valueOrDefault<String>(
              records?.toString(),
              '-',
            )),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: const Text('Ok'),
              ),
            ],
          ),
        );
      },
    );
  }
}
