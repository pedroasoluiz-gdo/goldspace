import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'colab_historico_editar_model.dart';
export 'colab_historico_editar_model.dart';

class ColabHistoricoEditarWidget extends StatefulWidget {
  const ColabHistoricoEditarWidget({
    super.key,
    int? idColab,
    this.empresa,
    this.cidade,
    this.setor,
    this.cargo,
    this.gestor,
    this.idcidade,
  }) : idColab = idColab ?? 0;

  final int idColab;
  final int? empresa;
  final List<dynamic>? cidade;
  final int? setor;
  final int? cargo;
  final int? gestor;
  final int? idcidade;

  @override
  State<ColabHistoricoEditarWidget> createState() =>
      _ColabHistoricoEditarWidgetState();
}

class _ColabHistoricoEditarWidgetState
    extends State<ColabHistoricoEditarWidget> {
  late ColabHistoricoEditarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColabHistoricoEditarModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.deuCerto = await CidadeCall.call(
        estado: getJsonField(
          widget.cidade?.last,
          r'''$.uf''',
        ).toString().toString(),
      );

      if ((_model.deuCerto?.succeeded ?? true)) {
        _model.cidades = CidadeCall.cidade(
          (_model.resultApi?.jsonBody ?? ''),
        )!
            .toList()
            .cast<String>();
        safeSetState(() {});
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return WebViewAware(
              child: AlertDialog(
                title: const Text('Erro'),
                content: const Text('Contate o suporte'),
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

      await Future.delayed(const Duration(milliseconds: 3000));
      safeSetState(() {
        _model.cidadeValueController?.value = getJsonField(
          widget.cidade!.first,
          r'''$.cidade''',
        );
      });
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
      child: SafeArea(
        child: Container(
          height: double.infinity,
          constraints: const BoxConstraints(
            minWidth: 768.0,
            minHeight: 768.0,
            maxWidth: 1080.0,
            maxHeight: 1080.0,
          ),
          decoration: const BoxDecoration(),
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        constraints: const BoxConstraints(
                          maxWidth: 1000.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          18.0, 6.0, 18.0, 6.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Stack(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Editar dados trabalhistas',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        Navigator.pop(context);
                                                      },
                                                      text: '  Cancelar  ',
                                                      options: FFButtonOptions(
                                                        height: 32.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            const Color(0x00F7A824),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        elevation: 0.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        _model.valido = true;
                                                        if (_model.formKey
                                                                    .currentState ==
                                                                null ||
                                                            !_model.formKey
                                                                .currentState!
                                                                .validate()) {
                                                          safeSetState(() =>
                                                              _model.valido =
                                                                  false);
                                                          return;
                                                        }
                                                        if (_model
                                                                .empresaValue ==
                                                            null) {
                                                          _model.valido = false;
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                        if (_model
                                                                .estadoValue ==
                                                            null) {
                                                          _model.valido = false;
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                        if (_model
                                                                .cidadeValue ==
                                                            null) {
                                                          _model.valido = false;
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                        if (_model.setorValue ==
                                                            null) {
                                                          _model.valido = false;
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                        if (_model.cargoValue ==
                                                            null) {
                                                          _model.valido = false;
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                        if (_model
                                                                .gestorValue ==
                                                            null) {
                                                          _model.valido = false;
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                        if (_model.valido!) {
                                                          await CColaboradoresTable()
                                                              .update(
                                                            data: {
                                                              'fk_empresa': _model
                                                                  .empresaValue,
                                                              'fk_cargo': _model
                                                                  .cargoValue,
                                                              'fk_setor': _model
                                                                  .setorValue,
                                                              'fk_gestor': _model
                                                                  .gestorValue,
                                                              'fk_cidade':
                                                                  valueOrDefault<
                                                                      int>(
                                                                _model
                                                                    .cidadeValue,
                                                                0,
                                                              ),
                                                            },
                                                            matchingRows:
                                                                (rows) =>
                                                                    rows.eq(
                                                              'id',
                                                              widget.idColab,
                                                            ),
                                                          );
                                                        } else {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'Revise todos os campos',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Inter',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                              ),
                                                              duration: const Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                            ),
                                                          );
                                                        }

                                                        Navigator.pop(
                                                            context, true);

                                                        safeSetState(() {});
                                                      },
                                                      text: 'Salvar',
                                                      options: FFButtonOptions(
                                                        height: 32.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            const Color(0x00F7A824),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                        elevation: 0.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
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
                                    Divider(
                                      height: 4.0,
                                      thickness: 1.0,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ],
                                ),
                                Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.always,
                                  child: SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        32.0, 32.0, 32.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Empresa*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: FutureBuilder<
                                                              ApiCallResponse>(
                                                            future: CadastrosGroup
                                                                .readEmpresasCall
                                                                .call(),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      LinearProgressIndicator(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                );
                                                              }
                                                              final empresaReadEmpresasResponse =
                                                                  snapshot
                                                                      .data!;

                                                              return FlutterFlowDropDown<
                                                                  int>(
                                                                controller: _model
                                                                        .empresaValueController ??=
                                                                    FormFieldController<
                                                                        int>(
                                                                  _model.empresaValue ??=
                                                                      widget
                                                                          .empresa,
                                                                ),
                                                                options: List<
                                                                        int>.from(
                                                                    CadastrosGroup
                                                                        .readEmpresasCall
                                                                        .idEmpresa(
                                                                  empresaReadEmpresasResponse
                                                                      .jsonBody,
                                                                )!),
                                                                optionLabels:
                                                                    CadastrosGroup
                                                                        .readEmpresasCall
                                                                        .grupo(
                                                                  empresaReadEmpresasResponse
                                                                      .jsonBody,
                                                                )!,
                                                                onChanged: (val) =>
                                                                    safeSetState(() =>
                                                                        _model.empresaValue =
                                                                            val),
                                                                width: 200.0,
                                                                height: 40.0,
                                                                maxHeight:
                                                                    300.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    'Selecione um valor...',
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    false,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 6.0)),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        32.0, 0.0, 32.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Cidade*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    FutureBuilder<
                                                        ApiCallResponse>(
                                                      future: CidadeCall.call(
                                                        estado: valueOrDefault<
                                                            String>(
                                                          getJsonField(
                                                            widget
                                                                .cidade?.first,
                                                            r'''$.uf''',
                                                          )?.toString(),
                                                          'MG',
                                                        ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child:
                                                                LinearProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                            ),
                                                          );
                                                        }
                                                        final rowCidadeResponse =
                                                            snapshot.data!;

                                                        return Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Flexible(
                                                              child:
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                controller: _model
                                                                        .estadoValueController ??=
                                                                    FormFieldController<
                                                                        String>(
                                                                  _model.estadoValue ??=
                                                                      valueOrDefault<
                                                                          String>(
                                                                    getJsonField(
                                                                      widget
                                                                          .cidade
                                                                          ?.first,
                                                                      r'''$.uf''',
                                                                    )?.toString(),
                                                                    'MG',
                                                                  ),
                                                                ),
                                                                options:
                                                                    FFAppConstants
                                                                        .estadosBrasileiros,
                                                                onChanged:
                                                                    (val) async {
                                                                  safeSetState(() =>
                                                                      _model.estadoValue =
                                                                          val);
                                                                  _model.resultApi =
                                                                      await CidadeCall
                                                                          .call(
                                                                    estado: _model
                                                                        .estadoValue,
                                                                  );

                                                                  if ((_model
                                                                          .resultApi
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    _model
                                                                        .cidades = CidadeCall
                                                                            .cidade(
                                                                      (_model.resultApi
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!
                                                                        .toList()
                                                                        .cast<
                                                                            String>();
                                                                    safeSetState(
                                                                        () {});
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              AlertDialog(
                                                                            title:
                                                                                const Text('Erro'),
                                                                            content:
                                                                                const Text('Contate o suporte'),
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

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                width: 200.0,
                                                                height: 40.0,
                                                                maxHeight:
                                                                    300.0,
                                                                searchHintTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                searchTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    'Selecione um valor...',
                                                                searchHintText:
                                                                    'Pesquisas...',
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    false,
                                                                isSearchable:
                                                                    true,
                                                                isMultiSelect:
                                                                    false,
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 4,
                                                              child:
                                                                  FlutterFlowDropDown<
                                                                      int>(
                                                                controller: _model
                                                                        .cidadeValueController ??=
                                                                    FormFieldController<
                                                                        int>(
                                                                  _model.cidadeValue ??=
                                                                      valueOrDefault<
                                                                          int>(
                                                                    widget
                                                                        .idcidade,
                                                                    0,
                                                                  ),
                                                                ),
                                                                options: List<
                                                                        int>.from(
                                                                    CidadeCall
                                                                        .id(
                                                                  rowCidadeResponse
                                                                      .jsonBody,
                                                                )!),
                                                                optionLabels:
                                                                    CidadeCall
                                                                        .cidade(
                                                                  rowCidadeResponse
                                                                      .jsonBody,
                                                                )!,
                                                                onChanged: (val) =>
                                                                    safeSetState(() =>
                                                                        _model.cidadeValue =
                                                                            val),
                                                                width: 200.0,
                                                                height: 40.0,
                                                                maxHeight:
                                                                    300.0,
                                                                searchHintTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                searchTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    'Selecione um valor...',
                                                                searchHintText:
                                                                    'Pesquisas...',
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                disabled: _model
                                                                            .estadoValue ==
                                                                        null ||
                                                                    _model.estadoValue ==
                                                                        '',
                                                                isOverButton:
                                                                    false,
                                                                isSearchable:
                                                                    true,
                                                                isMultiSelect:
                                                                    false,
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              width: 8.0)),
                                                        );
                                                      },
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 6.0)),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        32.0, 0.0, 32.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Setor*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: FutureBuilder<
                                                              ApiCallResponse>(
                                                            future: CadastrosGroup
                                                                .readSetorCall
                                                                .call(),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      LinearProgressIndicator(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                );
                                                              }
                                                              final setorReadSetorResponse =
                                                                  snapshot
                                                                      .data!;

                                                              return FlutterFlowDropDown<
                                                                  int>(
                                                                controller: _model
                                                                        .setorValueController ??=
                                                                    FormFieldController<
                                                                        int>(
                                                                  _model.setorValue ??=
                                                                      widget
                                                                          .setor,
                                                                ),
                                                                options: List<
                                                                        int>.from(
                                                                    CadastrosGroup
                                                                        .readSetorCall
                                                                        .idSetor(
                                                                  setorReadSetorResponse
                                                                      .jsonBody,
                                                                )!),
                                                                optionLabels:
                                                                    CadastrosGroup
                                                                        .readSetorCall
                                                                        .descricao(
                                                                  setorReadSetorResponse
                                                                      .jsonBody,
                                                                )!,
                                                                onChanged: (val) =>
                                                                    safeSetState(() =>
                                                                        _model.setorValue =
                                                                            val),
                                                                width: 200.0,
                                                                height: 40.0,
                                                                maxHeight:
                                                                    300.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    'Selecione um valor...',
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    false,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 6.0)),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        32.0, 0.0, 32.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Cargo*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: FutureBuilder<
                                                              ApiCallResponse>(
                                                            future: CadastrosGroup
                                                                .readCargosCall
                                                                .call(),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      LinearProgressIndicator(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                );
                                                              }
                                                              final cargoReadCargosResponse =
                                                                  snapshot
                                                                      .data!;

                                                              return FlutterFlowDropDown<
                                                                  int>(
                                                                controller: _model
                                                                        .cargoValueController ??=
                                                                    FormFieldController<
                                                                        int>(
                                                                  _model.cargoValue ??=
                                                                      widget
                                                                          .cargo,
                                                                ),
                                                                options: List<
                                                                        int>.from(
                                                                    CadastrosGroup
                                                                        .readCargosCall
                                                                        .idCargo(
                                                                  cargoReadCargosResponse
                                                                      .jsonBody,
                                                                )!),
                                                                optionLabels:
                                                                    CadastrosGroup
                                                                        .readCargosCall
                                                                        .descricao(
                                                                  cargoReadCargosResponse
                                                                      .jsonBody,
                                                                )!,
                                                                onChanged: (val) =>
                                                                    safeSetState(() =>
                                                                        _model.cargoValue =
                                                                            val),
                                                                width: 200.0,
                                                                height: 40.0,
                                                                maxHeight:
                                                                    300.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    'Selecione um valor...',
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    false,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 6.0)),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        32.0, 0.0, 32.0, 32.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Gestor*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: FutureBuilder<
                                                              ApiCallResponse>(
                                                            future: CadastrosGroup
                                                                .readGestorCall
                                                                .call(),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      LinearProgressIndicator(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                );
                                                              }
                                                              final gestorReadGestorResponse =
                                                                  snapshot
                                                                      .data!;

                                                              return FlutterFlowDropDown<
                                                                  int>(
                                                                controller: _model
                                                                        .gestorValueController ??=
                                                                    FormFieldController<
                                                                        int>(
                                                                  _model.gestorValue ??=
                                                                      valueOrDefault<
                                                                          int>(
                                                                    widget
                                                                        .gestor,
                                                                    0,
                                                                  ),
                                                                ),
                                                                options: List<
                                                                        int>.from(
                                                                    CadastrosGroup
                                                                        .readGestorCall
                                                                        .idGestor(
                                                                  gestorReadGestorResponse
                                                                      .jsonBody,
                                                                )!),
                                                                optionLabels:
                                                                    CadastrosGroup
                                                                        .readGestorCall
                                                                        .nome(
                                                                  gestorReadGestorResponse
                                                                      .jsonBody,
                                                                )!,
                                                                onChanged: (val) =>
                                                                    safeSetState(() =>
                                                                        _model.gestorValue =
                                                                            val),
                                                                width: 200.0,
                                                                height: 40.0,
                                                                maxHeight:
                                                                    300.0,
                                                                searchHintTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                searchTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    'Selecione um valor...',
                                                                searchHintText:
                                                                    'Digite o nome do gestor...',
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    false,
                                                                isSearchable:
                                                                    true,
                                                                isMultiSelect:
                                                                    false,
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 6.0)),
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 30.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
