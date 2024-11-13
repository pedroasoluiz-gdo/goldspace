import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'chat_vazio_model.dart';
export 'chat_vazio_model.dart';

class ChatVazioWidget extends StatefulWidget {
  const ChatVazioWidget({super.key});

  @override
  State<ChatVazioWidget> createState() => _ChatVazioWidgetState();
}

class _ChatVazioWidgetState extends State<ChatVazioWidget> {
  late ChatVazioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatVazioModel());

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
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 400.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent3,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SelectionArea(
                      child: AutoSizeText(
                    'Ainda não trocamos nenhuma mensagem, mas estou aqui para te ouvir. Envie a primeira mensagem e vamos começar uma conversa!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
