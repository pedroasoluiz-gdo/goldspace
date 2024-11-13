import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/gold_space_adm/geral/cabecalhos/menu_lateral/menu_lateral_widget.dart';
import '/gold_space_adm/geral/chat/chat_vazio/chat_vazio_widget.dart';
import '/gold_space_adm/geral/chat/usr_msg/usr_msg_widget.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chat_model.dart';
export 'chat_model.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  late ChatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          await actions.desconectar(
            'b_mensagens',
          );
          await actions.conectar(
            'b_mensagens',
            () async {},
          );
        }),
        Future(() async {
          await actions.desconectar(
            'vw_conversas_geral',
          );
          await actions.conectar(
            'vw_conversas_geral',
            () async {
              await _model.loadingChat(context);
            },
          );
        }),
      ]);
      await _model.loadingChat(context);
      safeSetState(() {});
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();
    _model.textFieldFocusNode1!.addListener(
      () async {
        await _model.loadingChat(context);
        safeSetState(() {});
      },
    );
    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.textFieldFocusNode2!.addListener(
      () async {
        await _model.loadingUsers(context);
        safeSetState(() {});
      },
    );
    _model.txtQuestionTextController ??= TextEditingController();
    _model.txtQuestionFocusNode ??= FocusNode();

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
      alignment: const AlignmentDirectional(-1.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).info,
                  width: 0.0,
                ),
              ),
              child: wrapWithModel(
                model: _model.menuLateralModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: const MenuLateralWidget(
                  index: 5,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Flex(
                direction: Axis.vertical,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 0.0,
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).info,
                          width: 0.0,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0.0,
                              child: Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).info,
                                    width: 0.0,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (!_model.vwNovochat)
                                                  Expanded(
                                                    child: Container(
                                                      width: 350.0,
                                                      height: 100.0,
                                                      decoration: const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  20.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            18.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Comunidade',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    _model.vwNovochat =
                                                                        !_model
                                                                            .vwNovochat;
                                                                    safeSetState(
                                                                        () {});
                                                                    await _model
                                                                        .loadingUsers(
                                                                            context);
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  text:
                                                                      'Novo chat',
                                                                  icon: const Icon(
                                                                    Icons.chat,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            18.0,
                                                                            0.0,
                                                                            18.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          100.0,
                                                                      constraints:
                                                                          const BoxConstraints(
                                                                        minHeight:
                                                                            36.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.textController1,
                                                                        focusNode:
                                                                            _model.textFieldFocusNode1,
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          isDense:
                                                                              true,
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintText:
                                                                              'Pesquisar',
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          contentPadding:
                                                                              const EdgeInsets.all(12.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        validator: _model
                                                                            .textController1Validator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Expanded(
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final dataItem = _model
                                                                      .conversas
                                                                      .map(
                                                                          (e) =>
                                                                              e)
                                                                      .toList();

                                                                  return ListView
                                                                      .separated(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        dataItem
                                                                            .length,
                                                                    separatorBuilder: (_,
                                                                            __) =>
                                                                        const SizedBox(
                                                                            height:
                                                                                6.0),
                                                                    itemBuilder:
                                                                        (context,
                                                                            dataItemIndex) {
                                                                      final dataItemItem =
                                                                          dataItem[
                                                                              dataItemIndex];
                                                                      return InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          _model.fkConversa =
                                                                              dataItemItem.conversaId;
                                                                          _model.nome =
                                                                              dataItemItem.usrNome;
                                                                          _model.picture =
                                                                              valueOrDefault<String>(
                                                                            dataItemItem.usrFoto,
                                                                            'https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg',
                                                                          );
                                                                          _model.fkUsuario =
                                                                              dataItemItem.usrId;
                                                                          safeSetState(
                                                                              () {});
                                                                          await BMensagensTable()
                                                                              .update(
                                                                            data: {
                                                                              'lida': true,
                                                                            },
                                                                            matchingRows: (rows) => rows
                                                                                .eq(
                                                                                  'fkConversa',
                                                                                  _model.fkConversa,
                                                                                )
                                                                                .neq(
                                                                                  'fkUser',
                                                                                  currentUserUid,
                                                                                ),
                                                                          );
                                                                          await _model
                                                                              .loadingMsg(context);
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color: dataItemItem.conversaId == _model.fkConversa
                                                                                ? FlutterFlowTheme.of(context).secondaryBackground
                                                                                : const Color(0x00000000),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 40.0,
                                                                                    height: 40.0,
                                                                                    clipBehavior: Clip.antiAlias,
                                                                                    decoration: const BoxDecoration(
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                    child: CachedNetworkImage(
                                                                                      fadeInDuration: const Duration(milliseconds: 0),
                                                                                      fadeOutDuration: const Duration(milliseconds: 0),
                                                                                      imageUrl: valueOrDefault<String>(
                                                                                        dataItemItem.usrFoto,
                                                                                        'https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg',
                                                                                      ),
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                dataItemItem.usrNome,
                                                                                                '<erro>',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              dateTimeFormat(
                                                                                                "Hm",
                                                                                                functions.formatDateString(valueOrDefault<String>(
                                                                                                  dataItemItem.msgUltimaCadastro,
                                                                                                  '1990-01-01',
                                                                                                )),
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              '0',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Inter',
                                                                                                  fontSize: 11.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  dataItemItem.msgUltimaTexto,
                                                                                                  '<error>',
                                                                                                ).maybeHandleOverflow(
                                                                                                  maxChars: 35,
                                                                                                  replacement: '…',
                                                                                                ),
                                                                                                maxLines: 1,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Inter',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          if (dataItemItem.msgNaoLidas != 0)
                                                                                            AnimatedContainer(
                                                                                              duration: const Duration(milliseconds: 1000),
                                                                                              curve: Curves.easeIn,
                                                                                              width: 18.0,
                                                                                              height: 18.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).success,
                                                                                                shape: BoxShape.circle,
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  valueOrDefault<String>(
                                                                                                    dataItemItem.msgNaoLidas.toString(),
                                                                                                    '0',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Inter',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        fontSize: 10.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                    ].divide(const SizedBox(height: 4.0)),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: <Widget>[]
                                                                  .divide(const SizedBox(
                                                                      width:
                                                                          8.0)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                if (_model.vwNovochat)
                                                  Expanded(
                                                    child: Container(
                                                      width: 350.0,
                                                      height: 100.0,
                                                      decoration: const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  20.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            18.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    _model.vwNovochat =
                                                                        !_model
                                                                            .vwNovochat;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  text:
                                                                      'Voltar',
                                                                  icon: const Icon(
                                                                    Icons
                                                                        .navigate_before_rounded,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            18.0,
                                                                            0.0,
                                                                            18.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          100.0,
                                                                      constraints:
                                                                          const BoxConstraints(
                                                                        minHeight:
                                                                            36.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.textController2,
                                                                        focusNode:
                                                                            _model.textFieldFocusNode2,
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          isDense:
                                                                              true,
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintText:
                                                                              'Pesquisar',
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          contentPadding:
                                                                              const EdgeInsets.all(12.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        validator: _model
                                                                            .textController2Validator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Expanded(
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final users = _model
                                                                      .usuarios
                                                                      .toList();

                                                                  return ListView
                                                                      .separated(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount: users
                                                                        .length,
                                                                    separatorBuilder: (_,
                                                                            __) =>
                                                                        const SizedBox(
                                                                            height:
                                                                                6.0),
                                                                    itemBuilder:
                                                                        (context,
                                                                            usersIndex) {
                                                                      final usersItem =
                                                                          users[
                                                                              usersIndex];
                                                                      return InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          _model.fkConversa =
                                                                              '1';
                                                                          _model.nome =
                                                                              usersItem.fullName;
                                                                          _model.picture =
                                                                              valueOrDefault<String>(
                                                                            usersItem.picture,
                                                                            'https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg',
                                                                          );
                                                                          _model.fkUsuario =
                                                                              usersItem.id;
                                                                          safeSetState(
                                                                              () {});
                                                                          await _model
                                                                              .loadingMsg(context);
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.vwNovochat =
                                                                              false;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 40.0,
                                                                                    height: 40.0,
                                                                                    clipBehavior: Clip.antiAlias,
                                                                                    decoration: const BoxDecoration(
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                    child: CachedNetworkImage(
                                                                                      fadeInDuration: const Duration(milliseconds: 0),
                                                                                      fadeOutDuration: const Duration(milliseconds: 0),
                                                                                      imageUrl: valueOrDefault<String>(
                                                                                        usersItem.picture,
                                                                                        'https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg',
                                                                                      ),
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                usersItem.fullName,
                                                                                                '<erro>',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  usersItem.tipo,
                                                                                                  '<error>',
                                                                                                ).maybeHandleOverflow(
                                                                                                  maxChars: 35,
                                                                                                  replacement: '…',
                                                                                                ),
                                                                                                maxLines: 1,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Inter',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ].divide(const SizedBox(height: 4.0)),
                                                                                  ),
                                                                                ),
                                                                                Icon(
                                                                                  Icons.navigate_next_rounded,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 20.0,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: <Widget>[]
                                                                  .divide(const SizedBox(
                                                                      width:
                                                                          8.0)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (_model.fkConversa != null &&
                                                    _model.fkConversa != '')
                                                  Expanded(
                                                    child: Container(
                                                      width: 650.0,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          1.0,
                                                      decoration: const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  20.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  20.0),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        18.0,
                                                                        18.0,
                                                                        18.0,
                                                                        6.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            14.0,
                                                                            8.0,
                                                                            14.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              4.0,
                                                                              0.0,
                                                                              4.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: 36.0,
                                                                                height: 36.0,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: const BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
                                                                                  valueOrDefault<String>(
                                                                                    _model.picture,
                                                                                    'https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg',
                                                                                  ),
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Text(
                                                                                          valueOrDefault<String>(
                                                                                            _model.nome,
                                                                                            'err',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                                fontFamily: 'Inter',
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                          child: Icon(
                                                                                            Icons.verified_rounded,
                                                                                            color: FlutterFlowTheme.of(context).success,
                                                                                            size: 16.0,
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Text(
                                                                                      'Online',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(height: 4.0)),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              30.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.read_more_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            _model.info =
                                                                                true;
                                                                            safeSetState(() {});
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Expanded(
                                                            flex: 12,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final msgItem = _model
                                                                      .mensagens
                                                                      .map(
                                                                          (e) =>
                                                                              e)
                                                                      .toList();
                                                                  if (msgItem
                                                                      .isEmpty) {
                                                                    return const SizedBox(
                                                                      width: double
                                                                          .infinity,
                                                                      child:
                                                                          ChatVazioWidget(),
                                                                    );
                                                                  }

                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .fromLTRB(
                                                                      0,
                                                                      16.0,
                                                                      0,
                                                                      16.0,
                                                                    ),
                                                                    reverse:
                                                                        true,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        msgItem
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            msgItemIndex) {
                                                                      final msgItemItem =
                                                                          msgItem[
                                                                              msgItemIndex];
                                                                      return Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            6.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            if (msgItemItem.primeiraDia)
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                      child: BackdropFilter(
                                                                                        filter: ImageFilter.blur(
                                                                                          sigmaX: 5.0,
                                                                                          sigmaY: 7.0,
                                                                                        ),
                                                                                        child: Container(
                                                                                          height: 30.0,
                                                                                          constraints: const BoxConstraints(
                                                                                            minWidth: 100.0,
                                                                                            maxWidth: 120.0,
                                                                                          ),
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).accent3,
                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  dateTimeFormat(
                                                                                                    "MMMEd",
                                                                                                    functions.formatDateString(msgItemItem.criacao),
                                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                                  ),
                                                                                                  '<erro>',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Inter',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w500,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 12.0)),
                                                                                ),
                                                                              ),
                                                                            if (msgItemItem.fkUser !=
                                                                                currentUserUid)
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 0.0,
                                                                                          shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          child: Container(
                                                                                            constraints: const BoxConstraints(
                                                                                              maxWidth: 220.0,
                                                                                            ),
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                                            ),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 6.0, 10.0, 6.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.min,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  if (msgItemItem.url != '')
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                                                      child: InkWell(
                                                                                                        splashColor: Colors.transparent,
                                                                                                        focusColor: Colors.transparent,
                                                                                                        hoverColor: Colors.transparent,
                                                                                                        highlightColor: Colors.transparent,
                                                                                                        onTap: () async {
                                                                                                          await Navigator.push(
                                                                                                            context,
                                                                                                            PageTransition(
                                                                                                              type: PageTransitionType.fade,
                                                                                                              child: FlutterFlowExpandedImageView(
                                                                                                                image: Image.network(
                                                                                                                  msgItemItem.url,
                                                                                                                  fit: BoxFit.contain,
                                                                                                                ),
                                                                                                                allowRotation: false,
                                                                                                                tag: msgItemItem.url,
                                                                                                                useHeroAnimation: true,
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                        child: Hero(
                                                                                                          tag: msgItemItem.url,
                                                                                                          transitionOnUserGestures: true,
                                                                                                          child: ClipRRect(
                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                            child: Image.network(
                                                                                                              msgItemItem.url,
                                                                                                              width: 200.0,
                                                                                                              height: 200.0,
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  Container(
                                                                                                    constraints: const BoxConstraints(
                                                                                                      minWidth: 50.0,
                                                                                                    ),
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    ),
                                                                                                    child: Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        msgItemItem.texto,
                                                                                                        'erro',
                                                                                                      ),
                                                                                                      textAlign: TextAlign.start,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Inter',
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          valueOrDefault<String>(
                                                                                                            dateTimeFormat(
                                                                                                              "Hm",
                                                                                                              functions.formatDateString(msgItemItem.criacao),
                                                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                                                            ),
                                                                                                            '00:00',
                                                                                                          ),
                                                                                                          textAlign: TextAlign.end,
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Inter',
                                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                fontSize: 11.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            if (msgItemItem.fkUser ==
                                                                                currentUserUid)
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    wrapWithModel(
                                                                                      model: _model.usrMsgModels.getModel(
                                                                                        msgItemItem.id,
                                                                                        msgItemIndex,
                                                                                      ),
                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                      child: UsrMsgWidget(
                                                                                        key: Key(
                                                                                          'Keyhqm_${msgItemItem.id}',
                                                                                        ),
                                                                                        parameter1: msgItemItem.url,
                                                                                        parameter2: valueOrDefault<String>(
                                                                                          msgItemItem.texto,
                                                                                          'error',
                                                                                        ),
                                                                                        parameter3: msgItemItem.criacao,
                                                                                        parameter4: msgItemItem.lida,
                                                                                        parameter5: _model.veOpcao,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        18.0,
                                                                        6.0,
                                                                        18.0,
                                                                        18.0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          1.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          if (_model.imagem == null ||
                                                                              (_model.imagem?.bytes?.isEmpty ?? true))
                                                                            FlutterFlowIconButton(
                                                                              borderRadius: 80.0,
                                                                              buttonSize: 40.0,
                                                                              icon: Icon(
                                                                                Icons.attach_file_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 24.0,
                                                                              ),
                                                                              onPressed: () async {
                                                                                final selectedMedia = await selectMedia(
                                                                                  maxWidth: 1080.00,
                                                                                  maxHeight: 1080.00,
                                                                                  imageQuality: 100,
                                                                                  includeDimensions: true,
                                                                                  mediaSource: MediaSource.photoGallery,
                                                                                  multiImage: false,
                                                                                );
                                                                                if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                  safeSetState(() => _model.isDataUploading1 = true);
                                                                                  var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                  try {
                                                                                    selectedUploadedFiles = selectedMedia
                                                                                        .map((m) => FFUploadedFile(
                                                                                              name: m.storagePath.split('/').last,
                                                                                              bytes: m.bytes,
                                                                                              height: m.dimensions?.height,
                                                                                              width: m.dimensions?.width,
                                                                                              blurHash: m.blurHash,
                                                                                            ))
                                                                                        .toList();
                                                                                  } finally {
                                                                                    _model.isDataUploading1 = false;
                                                                                  }
                                                                                  if (selectedUploadedFiles.length == selectedMedia.length) {
                                                                                    safeSetState(() {
                                                                                      _model.uploadedLocalFile1 = selectedUploadedFiles.first;
                                                                                    });
                                                                                  } else {
                                                                                    safeSetState(() {});
                                                                                    return;
                                                                                  }
                                                                                }

                                                                                _model.imagem = _model.uploadedLocalFile1;
                                                                                safeSetState(() {});
                                                                              },
                                                                            ),
                                                                          Expanded(
                                                                            child:
                                                                                Container(
                                                                              width: 100.0,
                                                                              constraints: const BoxConstraints(
                                                                                minHeight: 30.0,
                                                                                maxHeight: 120.0,
                                                                              ),
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: TextFormField(
                                                                                controller: _model.txtQuestionTextController,
                                                                                focusNode: _model.txtQuestionFocusNode,
                                                                                autofocus: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  isDense: true,
                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  hintText: 'Digite uma mensagem',
                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: const BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(20.0),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: const BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(20.0),
                                                                                  ),
                                                                                  errorBorder: OutlineInputBorder(
                                                                                    borderSide: const BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(20.0),
                                                                                  ),
                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                    borderSide: const BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(20.0),
                                                                                  ),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Inter',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                                maxLines: null,
                                                                                maxLength: 255,
                                                                                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                                                                                buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
                                                                                validator: _model.txtQuestionTextControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          FlutterFlowIconButton(
                                                                            borderColor:
                                                                                Colors.transparent,
                                                                            borderRadius:
                                                                                20.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                40.0,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.send_sharp,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 22.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              if (_model.txtQuestionTextController.text != '') {
                                                                                if (!(_model.mensagens.isNotEmpty)) {
                                                                                  _model.cvs = await BConversasTable().insert({
                                                                                    'data_criacao': supaSerialize<DateTime>(getCurrentTimestamp),
                                                                                  });
                                                                                  await BConversasUsuariosTable().insert({
                                                                                    'fkConversa': _model.cvs?.id,
                                                                                    'fkUser': currentUserUid,
                                                                                  });
                                                                                  await BConversasUsuariosTable().insert({
                                                                                    'fkConversa': _model.cvs?.id,
                                                                                    'fkUser': _model.fkUsuario,
                                                                                  });
                                                                                  _model.fkConversa = _model.cvs?.id;
                                                                                  safeSetState(() {});
                                                                                }
                                                                                _model.insert = await BMensagensTable().insert({
                                                                                  'fkConversa': _model.fkConversa,
                                                                                  'fkUser': currentUserUid,
                                                                                  'texto': _model.txtQuestionTextController.text,
                                                                                  'lida': false,
                                                                                });
                                                                                if (_model.imagem != null && (_model.imagem?.bytes?.isNotEmpty ?? false)) {
                                                                                  {
                                                                                    safeSetState(() => _model.isDataUploading2 = true);
                                                                                    var selectedUploadedFiles = <FFUploadedFile>[];
                                                                                    var selectedMedia = <SelectedFile>[];
                                                                                    var downloadUrls = <String>[];
                                                                                    try {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      selectedUploadedFiles = _model.imagem!.bytes!.isNotEmpty ? [_model.imagem!] : <FFUploadedFile>[];
                                                                                      selectedMedia = selectedFilesFromUploadedFiles(
                                                                                        selectedUploadedFiles,
                                                                                        storageFolderPath: 'social/midiaChat',
                                                                                      );
                                                                                      downloadUrls = await uploadSupabaseStorageFiles(
                                                                                        bucketName: 'storageAPP',
                                                                                        selectedFiles: selectedMedia,
                                                                                      );
                                                                                    } finally {
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      _model.isDataUploading2 = false;
                                                                                    }
                                                                                    if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                      safeSetState(() {
                                                                                        _model.uploadedLocalFile2 = selectedUploadedFiles.first;
                                                                                        _model.uploadedFileUrl2 = downloadUrls.first;
                                                                                      });
                                                                                      showUploadMessage(context, 'Success!');
                                                                                    } else {
                                                                                      safeSetState(() {});
                                                                                      showUploadMessage(context, 'Failed to upload data');
                                                                                      return;
                                                                                    }
                                                                                  }

                                                                                  await BMensagensTable().update(
                                                                                    data: {
                                                                                      'url': _model.uploadedFileUrl2,
                                                                                    },
                                                                                    matchingRows: (rows) => rows.eq(
                                                                                      'id',
                                                                                      _model.insert?.id,
                                                                                    ),
                                                                                  );
                                                                                  _model.imagem = null;
                                                                                  safeSetState(() {});
                                                                                }
                                                                                safeSetState(() {
                                                                                  _model.txtQuestionTextController?.clear();
                                                                                });
                                                                                _model.msgResult2 = await ChatGroup.readMessagesCall.call(
                                                                                  fkConversa: _model.fkConversa,
                                                                                );

                                                                                if ((_model.msgResult2?.succeeded ?? true)) {
                                                                                  _model.mensagens = ((_model.msgResult2?.jsonBody ?? '').toList().map<MensagensStruct?>(MensagensStruct.maybeFromMap).toList() as Iterable<MensagensStruct?>).withoutNulls.toList().cast<MensagensStruct>();
                                                                                  safeSetState(() {});
                                                                                }
                                                                                await _model.loadingChat(context);
                                                                                safeSetState(() {});
                                                                              }

                                                                              safeSetState(() {});
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    if (valueOrDefault<
                                                                        bool>(
                                                                      _model.imagem !=
                                                                              null &&
                                                                          (_model.imagem?.bytes?.isNotEmpty ??
                                                                              false),
                                                                      false,
                                                                    ))
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            12.0,
                                                                            0.0,
                                                                            12.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.memory(
                                                                                _model.imagem?.bytes ?? Uint8List.fromList([]),
                                                                                width: 80.0,
                                                                                height: 80.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
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
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (_model.info)
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 18.0, 18.0, 0.0),
                                            child: FutureBuilder<
                                                List<VwColaboradoresFullRow>>(
                                              future: VwColaboradoresFullTable()
                                                  .querySingleRow(
                                                queryFn: (q) => q.eq(
                                                  'fkUser',
                                                  _model.fkUsuario,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 100.0,
                                                      height: 100.0,
                                                      child: SpinKitRing(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 100.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<VwColaboradoresFullRow>
                                                    containerVwColaboradoresFullRowList =
                                                    snapshot.data!;

                                                final containerVwColaboradoresFullRow =
                                                    containerVwColaboradoresFullRowList
                                                            .isNotEmpty
                                                        ? containerVwColaboradoresFullRowList
                                                            .first
                                                        : null;

                                                return Container(
                                                  width: 300.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        18.0,
                                                                        6.0,
                                                                        18.0,
                                                                        6.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child: Stack(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Detalhes',
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
                                                                        alignment: const AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                        child:
                                                                            FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              30.0,
                                                                          buttonSize:
                                                                              36.0,
                                                                          fillColor:
                                                                              const Color(0x00F7A824),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.close_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                18.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            _model.info =
                                                                                false;
                                                                            safeSetState(() {});
                                                                          },
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
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.all(
                                                            18.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0x2FF7A824),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.cases_rounded,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 22.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                18.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Cargo',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      containerVwColaboradoresFullRow?.cargo,
                                                                                      '-',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Inter',
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 2.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0x2FF7A824),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                                                                              child: FaIcon(
                                                                                FontAwesomeIcons.solidBuilding,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 22.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                18.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Empresa',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      containerVwColaboradoresFullRow?.empresa,
                                                                                      '-',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Inter',
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 2.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            2.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          40.0,
                                                                      height:
                                                                          40.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0x2FF7A824),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              1.0,
                                                                              0.0),
                                                                          child:
                                                                              FaIcon(
                                                                            FontAwesomeIcons.coffee,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            18.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              'Setor',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Inter',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 12.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  containerVwColaboradoresFullRow?.setor,
                                                                                  '-',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Inter',
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(height: 2.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            2.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0x2FF7A824),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                                                                              child: Icon(
                                                                                FFIcons.kframe2095,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                18.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Gestor',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      containerVwColaboradoresFullRow?.gestor,
                                                                                      '-',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Inter',
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 2.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            2.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0x2FF7A824),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                                                                              child: FaIcon(
                                                                                FontAwesomeIcons.calendarCheck,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                18.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Admissão',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      '${dateTimeFormat(
                                                                                        "dd/MM/yyyy",
                                                                                        containerVwColaboradoresFullRow?.admissao,
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      )} - ${dateTimeFormat(
                                                                                        "relative",
                                                                                        containerVwColaboradoresFullRow?.admissao,
                                                                                        locale: FFLocalizations.of(context).languageShortCode ?? FFLocalizations.of(context).languageCode,
                                                                                      )}',
                                                                                      '-',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Inter',
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 2.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            if (containerVwColaboradoresFullRow
                                                                    ?.ativo ==
                                                                false)
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            40.0,
                                                                        height:
                                                                            40.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              const Color(0x2FF7A824),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                1.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.calendarTimes,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              18.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              Text(
                                                                                'Demissão',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Inter',
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    '${dateTimeFormat(
                                                                                      "dd/MM/yyyy",
                                                                                      containerVwColaboradoresFullRow?.demissao,
                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                    )} - ${dateTimeFormat(
                                                                                      "relative",
                                                                                      containerVwColaboradoresFullRow?.demissao,
                                                                                      locale: FFLocalizations.of(context).languageShortCode ?? FFLocalizations.of(context).languageCode,
                                                                                    )}',
                                                                                    '-',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(height: 2.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                          ].divide(const SizedBox(
                                                              height: 18.0)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 18.0, 18.0),
                                              child: FutureBuilder<
                                                  List<BMensagensRow>>(
                                                future:
                                                    BMensagensTable().queryRows(
                                                  queryFn: (q) => q
                                                      .eq(
                                                        'fkConversa',
                                                        _model.fkConversa,
                                                      )
                                                      .not(
                                                        'url',
                                                        'is',
                                                        null,
                                                      )
                                                      .order('criacao'),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 100.0,
                                                        height: 100.0,
                                                        child: SpinKitRing(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 100.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<BMensagensRow>
                                                      paiImgBMensagensRowList =
                                                      snapshot.data!;

                                                  return Container(
                                                    width: 300.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          18.0,
                                                                          6.0,
                                                                          18.0,
                                                                          6.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Mídia',
                                                                            style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Opacity(
                                                                          opacity:
                                                                              0.0,
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                FlutterFlowIconButton(
                                                                              borderColor: Colors.transparent,
                                                                              borderRadius: 8.0,
                                                                              buttonSize: 36.0,
                                                                              fillColor: const Color(0x00F7A824),
                                                                              icon: Icon(
                                                                                Icons.close_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 18.0,
                                                                              ),
                                                                              onPressed: () async {
                                                                                _model.info = false;
                                                                                safeSetState(() {});
                                                                              },
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
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    18.0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final paiImgVar =
                                                                    paiImgBMensagensRowList
                                                                        .toList();

                                                                return SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: List.generate(
                                                                        paiImgVar
                                                                            .length,
                                                                        (paiImgVarIndex) {
                                                                      final paiImgVarItem =
                                                                          paiImgVar[
                                                                              paiImgVarIndex];
                                                                      return InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          await Navigator
                                                                              .push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: Image.network(
                                                                                  paiImgVarItem.url!,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: paiImgVarItem.url!,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag: paiImgVarItem
                                                                              .url!,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              paiImgVarItem.url!,
                                                                              width: 250.0,
                                                                              height: 250.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }).divide(const SizedBox(
                                                                        height:
                                                                            12.0)),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      16.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                paiImgBMensagensRowList
                                                                    .length
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 18.0)),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
