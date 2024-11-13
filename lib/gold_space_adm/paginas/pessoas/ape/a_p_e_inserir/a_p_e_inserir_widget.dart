import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'a_p_e_inserir_model.dart';
export 'a_p_e_inserir_model.dart';

class APEInserirWidget extends StatefulWidget {
  const APEInserirWidget({super.key});

  @override
  State<APEInserirWidget> createState() => _APEInserirWidgetState();
}

class _APEInserirWidgetState extends State<APEInserirWidget> {
  late APEInserirModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => APEInserirModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await _model.carregaDados(context);
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Form(
        key: _model.formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
          child: Container(
            width: 800.0,
            height: MediaQuery.sizeOf(context).height * 0.8,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(18.0, 6.0, 18.0, 6.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'Nova avaliação',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      _model.resultado =
                                          await ApeGroup.createAPECall.call(
                                        registrosJson: functions.convertJson(
                                            _model.objectInsert.toList()),
                                      );

                                      if ((_model.resultado?.succeeded ??
                                          true)) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              '[${valueOrDefault<String>(
                                                (_model.resultado?.statusCode ??
                                                        200)
                                                    .toString(),
                                                '200',
                                              )}] Avaliações cadastradas com sucesso.',
                                              style: const TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .success,
                                          ),
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Algo deu errado, contate o suporte. Códifo do erro: [${valueOrDefault<String>(
                                                (_model.resultado?.statusCode ??
                                                        200)
                                                    .toString(),
                                                '00000',
                                              )}]',
                                              style: const TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                      }

                                      Navigator.pop(context, true);

                                      safeSetState(() {});
                                    },
                                    text: 'Enviar  ',
                                    icon: const Icon(
                                      FFIcons.ksend,
                                      size: 22.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 32.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0x00F7A824),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                    text: 'Voltar  ',
                                    icon: const Icon(
                                      Icons.navigate_before_rounded,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 32.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0x00F7A824),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 4.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ],
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.periodoVariable = '45';
                                    safeSetState(() {});
                                    await _model.carregaDados(context);
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: 100.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: valueOrDefault<Color>(
                                        _model.periodoVariable == '45'
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : const Color(0x00000000),
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(8.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        '45 dias',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color: valueOrDefault<Color>(
                                                _model.periodoVariable == '45'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                              ),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.periodoVariable = '90';
                                    safeSetState(() {});
                                    await _model.carregaDados(context);
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: 100.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: _model.periodoVariable == '90'
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : const Color(0x00000000),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(8.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(8.0),
                                      ),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        '90 dias',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color: valueOrDefault<Color>(
                                                _model.periodoVariable == '90'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                              ),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                32.0, 0.0, 32.0, 32.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              child: Builder(
                                builder: (context) {
                                  final data = _model.records
                                      .map((e) => e)
                                      .toList()
                                      .where((e) =>
                                          e.periodoape ==
                                          (int.parse(
                                              (_model.periodoVariable!))))
                                      .toList();

                                  return FlutterFlowDataTable<ApeStruct>(
                                    controller: _model.tableRegistrosController,
                                    data: data,
                                    numRows: data.length,
                                    columnsBuilder: (onSortChanged) => [
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Código',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        fixedWidth:
                                            MediaQuery.sizeOf(context).width *
                                                0.08,
                                        onSort: onSortChanged,
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Período',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        fixedWidth:
                                            MediaQuery.sizeOf(context).width *
                                                0.06,
                                        onSort: onSortChanged,
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Vencimento',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        fixedWidth:
                                            MediaQuery.sizeOf(context).width *
                                                0.1,
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Nome',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        fixedWidth:
                                            MediaQuery.sizeOf(context).width *
                                                0.2,
                                        onSort: onSortChanged,
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Cargo',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        fixedWidth:
                                            MediaQuery.sizeOf(context).width *
                                                0.2,
                                        onSort: onSortChanged,
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Gestor',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        fixedWidth:
                                            MediaQuery.sizeOf(context).width *
                                                0.2,
                                        onSort: onSortChanged,
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Empresa',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        fixedWidth:
                                            MediaQuery.sizeOf(context).width *
                                                0.2,
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Admissão',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        fixedWidth:
                                            MediaQuery.sizeOf(context).width *
                                                0.1,
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Ações',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        fixedWidth:
                                            MediaQuery.sizeOf(context).width *
                                                0.1,
                                      ),
                                    ],
                                    dataRowBuilder: (dataItem, dataIndex,
                                            selected, onSelectChanged) =>
                                        DataRow(
                                      color: WidgetStateProperty.all(
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground),
                                      cells: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (!_model.objectInsert
                                                .contains(ApeStruct(
                                              nome: dataItem.nome,
                                              fkGestor: dataItem.fkGestor,
                                              gestor: dataItem.gestor,
                                              fkEmpresa: dataItem.fkEmpresa,
                                              empresa: dataItem.empresa,
                                              fkCargo: dataItem.fkCargo,
                                              cargo: dataItem.cargo,
                                              fkColab: dataItem.fkColab,
                                              periodoape: valueOrDefault<int>(
                                                dataItem.periodoape,
                                                0,
                                              ),
                                              vencimento:
                                                  valueOrDefault<String>(
                                                (String admissao, int periodo) {
                                                  return DateTime.parse(
                                                          admissao)
                                                      .add(Duration(
                                                          days: periodo))
                                                      .toString()
                                                      .split(' ')[0];
                                                }(
                                                    valueOrDefault<String>(
                                                      dataItem.admissao,
                                                      '1990-01-01',
                                                    ),
                                                    valueOrDefault<int>(
                                                      dataItem.periodoape,
                                                      0,
                                                    )),
                                                '1990-01-01',
                                              ),
                                            )))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.addToObjectInsert(
                                                      ApeStruct(
                                                    nome: dataItem.nome,
                                                    fkGestor: dataItem.fkGestor,
                                                    gestor: dataItem.gestor,
                                                    fkEmpresa:
                                                        dataItem.fkEmpresa,
                                                    empresa: dataItem.empresa,
                                                    fkCargo: dataItem.fkCargo,
                                                    cargo: dataItem.cargo,
                                                    fkColab: dataItem.fkColab,
                                                    periodoape:
                                                        valueOrDefault<int>(
                                                      dataItem.periodoape,
                                                      0,
                                                    ),
                                                    vencimento:
                                                        valueOrDefault<String>(
                                                      (String admissao,
                                                              int periodo) {
                                                        return DateTime.parse(
                                                                admissao)
                                                            .add(Duration(
                                                                days: periodo))
                                                            .toString()
                                                            .split(' ')[0];
                                                      }(
                                                          valueOrDefault<
                                                              String>(
                                                            dataItem.admissao,
                                                            '1990-01-01',
                                                          ),
                                                          valueOrDefault<int>(
                                                            dataItem.periodoape,
                                                            0,
                                                          )),
                                                      '1990-01-01',
                                                    ),
                                                  ));
                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons
                                                      .check_box_outline_blank_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 22.0,
                                                ),
                                              ),
                                            if (_model.objectInsert
                                                .contains(ApeStruct(
                                              nome: dataItem.nome,
                                              fkGestor: dataItem.fkGestor,
                                              gestor: dataItem.gestor,
                                              fkEmpresa: dataItem.fkEmpresa,
                                              empresa: dataItem.empresa,
                                              fkCargo: dataItem.fkCargo,
                                              cargo: dataItem.cargo,
                                              fkColab: dataItem.fkColab,
                                              periodoape: valueOrDefault<int>(
                                                dataItem.periodoape,
                                                0,
                                              ),
                                              vencimento:
                                                  valueOrDefault<String>(
                                                (String admissao, int periodo) {
                                                  return DateTime.parse(
                                                          admissao)
                                                      .add(Duration(
                                                          days: periodo))
                                                      .toString()
                                                      .split(' ')[0];
                                                }(
                                                    valueOrDefault<String>(
                                                      dataItem.admissao,
                                                      '1990-01-01',
                                                    ),
                                                    valueOrDefault<int>(
                                                      dataItem.periodoape,
                                                      0,
                                                    )),
                                                '1990-01-01',
                                              ),
                                            )))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.removeFromObjectInsert(
                                                      ApeStruct(
                                                    nome: dataItem.nome,
                                                    fkGestor: dataItem.fkGestor,
                                                    gestor: dataItem.gestor,
                                                    fkEmpresa:
                                                        dataItem.fkEmpresa,
                                                    empresa: dataItem.empresa,
                                                    fkCargo: dataItem.fkCargo,
                                                    cargo: dataItem.cargo,
                                                    fkColab: dataItem.fkColab,
                                                    periodoape:
                                                        valueOrDefault<int>(
                                                      dataItem.periodoape,
                                                      0,
                                                    ),
                                                    vencimento:
                                                        valueOrDefault<String>(
                                                      (String admissao,
                                                              int periodo) {
                                                        return DateTime.parse(
                                                                admissao)
                                                            .add(Duration(
                                                                days: periodo))
                                                            .toString()
                                                            .split(' ')[0];
                                                      }(
                                                          valueOrDefault<
                                                              String>(
                                                            dataItem.admissao,
                                                            '1990-01-01',
                                                          ),
                                                          valueOrDefault<int>(
                                                            dataItem.periodoape,
                                                            0,
                                                          )),
                                                      '1990-01-01',
                                                    ),
                                                  ));
                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.check_box_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 22.0,
                                                ),
                                              ),
                                            AutoSizeText(
                                              valueOrDefault<String>(
                                                dataItem.fkColab.toString(),
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ].divide(const SizedBox(width: 2.0)),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            dataItem.periodoape.toString(),
                                            '-',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        AnimatedDefaultTextStyle(
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          duration: const Duration(milliseconds: 600),
                                          curve: Curves.easeIn,
                                          child: Text(
                                            valueOrDefault<String>(
                                              functions.formatDate(
                                                  valueOrDefault<String>(
                                                (String admissao, int periodo) {
                                                  return DateTime.parse(
                                                          admissao)
                                                      .add(Duration(
                                                          days: periodo))
                                                      .toString()
                                                      .split(' ')[0];
                                                }(
                                                    valueOrDefault<String>(
                                                      dataItem.admissao,
                                                      '1990-01-01',
                                                    ),
                                                    valueOrDefault<int>(
                                                      dataItem.periodoape,
                                                      0,
                                                    )),
                                                '1990-01-01',
                                              )),
                                              '<erro>',
                                            ),
                                          ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            dataItem.nome,
                                            '-',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            dataItem.cargo,
                                            '-',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            dataItem.gestor,
                                            '-',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            dataItem.empresa,
                                            '-',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        dataItem.admissao,
                                                        '2024-01-01',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.edit_document,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ].map((c) => DataCell(c)).toList(),
                                    ),
                                    paginated: true,
                                    selectable: false,
                                    hidePaginator: false,
                                    showFirstLastButtons: true,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    headingRowHeight: 45.0,
                                    dataRowHeight: 50.0,
                                    columnSpacing: 6.0,
                                    headingRowColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    sortIconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    borderRadius: BorderRadius.circular(12.0),
                                    addHorizontalDivider: true,
                                    addTopAndBottomDivider: true,
                                    hideDefaultHorizontalDivider: true,
                                    horizontalDividerColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    horizontalDividerThickness: 1.0,
                                    addVerticalDivider: false,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
