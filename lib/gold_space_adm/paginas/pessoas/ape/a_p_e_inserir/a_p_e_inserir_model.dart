import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_p_e_inserir_widget.dart' show APEInserirWidget;
import 'package:flutter/material.dart';

class APEInserirModel extends FlutterFlowModel<APEInserirWidget> {
  ///  Local state fields for this component.

  String? periodoVariable = '45';

  List<ApeStruct> records = [];
  void addToRecords(ApeStruct item) => records.add(item);
  void removeFromRecords(ApeStruct item) => records.remove(item);
  void removeAtIndexFromRecords(int index) => records.removeAt(index);
  void insertAtIndexInRecords(int index, ApeStruct item) =>
      records.insert(index, item);
  void updateRecordsAtIndex(int index, Function(ApeStruct) updateFn) =>
      records[index] = updateFn(records[index]);

  List<ApeStruct> objectInsert = [];
  void addToObjectInsert(ApeStruct item) => objectInsert.add(item);
  void removeFromObjectInsert(ApeStruct item) => objectInsert.remove(item);
  void removeAtIndexFromObjectInsert(int index) => objectInsert.removeAt(index);
  void insertAtIndexInObjectInsert(int index, ApeStruct item) =>
      objectInsert.insert(index, item);
  void updateObjectInsertAtIndex(int index, Function(ApeStruct) updateFn) =>
      objectInsert[index] = updateFn(objectInsert[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (CreateAPE)] action in Button widget.
  ApiCallResponse? resultado;
  // State field(s) for table-Registros widget.
  final tableRegistrosController = FlutterFlowDataTableController<ApeStruct>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tableRegistrosController.dispose();
  }

  /// Action blocks.
  Future carregaDados(BuildContext context) async {
    ApiCallResponse? api;

    api = await ApeGroup.noventaDiasCall.call();

    if ((api.succeeded ?? true)) {
      records = ((api.jsonBody ?? '')
              .toList()
              .map<ApeStruct?>(ApeStruct.maybeFromMap)
              .toList() as Iterable<ApeStruct?>)
          .withoutNulls
          .toList()
          .cast<ApeStruct>();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Algo deu errado, tente novamente.',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
    }
  }
}
