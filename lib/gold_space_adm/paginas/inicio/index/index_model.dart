import '/flutter_flow/flutter_flow_util.dart';
import '/gold_space_adm/geral/cabecalhos/cabecalho/cabecalho_widget.dart';
import '/gold_space_adm/geral/cabecalhos/menu_lateral/menu_lateral_widget.dart';
import 'index_widget.dart' show IndexWidget;
import 'package:flutter/material.dart';

class IndexModel extends FlutterFlowModel<IndexWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu-lateral component.
  late MenuLateralModel menuLateralModel;
  // Model for Cabecalho component.
  late CabecalhoModel cabecalhoModel;

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
    cabecalhoModel = createModel(context, () => CabecalhoModel());
  }

  @override
  void dispose() {
    menuLateralModel.dispose();
    cabecalhoModel.dispose();
  }
}
