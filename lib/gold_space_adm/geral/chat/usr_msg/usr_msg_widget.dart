import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'usr_msg_model.dart';
export 'usr_msg_model.dart';

class UsrMsgWidget extends StatefulWidget {
  const UsrMsgWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    bool? parameter5,
  }) : parameter5 = parameter5 ?? false;

  final String? parameter1;
  final String? parameter2;
  final String? parameter3;
  final bool? parameter4;
  final bool parameter5;

  @override
  State<UsrMsgWidget> createState() => _UsrMsgWidgetState();
}

class _UsrMsgWidgetState extends State<UsrMsgWidget>
    with TickerProviderStateMixin {
  late UsrMsgModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsrMsgModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_model.abreOpcao)
          Container(
            width: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(() => _model.mouseRegionHovered1 = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionHovered1 = false);
                        }),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'Excluir',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ].divide(const SizedBox(height: 4.0)),
            ),
          ).animateOnActionTrigger(
            animationsMap['containerOnActionTriggerAnimation']!,
          ),
        MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          onEnter: ((event) async {
            safeSetState(() => _model.mouseRegionHovered2 = true);
            _model.veOpcao = true;
            safeSetState(() {});
          }),
          onExit: ((event) async {
            safeSetState(() => _model.mouseRegionHovered2 = false);
            _model.veOpcao = false;
            safeSetState(() {});
          }),
          child: Stack(
            alignment: const AlignmentDirectional(1.0, -1.0),
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                          color: FlutterFlowTheme.of(context).primary,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 6.0, 10.0, 6.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              if (widget.parameter1 != null &&
                                  widget.parameter1 != '')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 4.0),
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
                                              widget.parameter1!,
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: widget.parameter1!,
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: widget.parameter1!,
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          widget.parameter1!,
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
                                decoration: const BoxDecoration(),
                                child: Text(
                                  widget.parameter2!,
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        dateTimeFormat(
                                          "Hm",
                                          functions.formatDateString(
                                              widget.parameter3!),
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        '00:00',
                                      ),
                                      textAlign: TextAlign.end,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Colors.black,
                                            fontSize: 11.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    if (widget.parameter4 ?? true)
                                      const Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 2.0, 0.0, 0.0),
                                        child: Icon(
                                          FFIcons.kzzzzz,
                                          color: Colors.black,
                                          size: 12.0,
                                        ),
                                      ),
                                  ].divide(const SizedBox(width: 6.0)),
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
              if (_model.veOpcao)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 30.0,
                    buttonSize: 34.0,
                    fillColor: const Color(0xB8E0E3E7),
                    icon: const Icon(
                      Icons.expand_more_rounded,
                      color: Colors.black,
                      size: 20.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
            ],
          ),
        ),
      ].divide(const SizedBox(width: 2.0)),
    );
  }
}
