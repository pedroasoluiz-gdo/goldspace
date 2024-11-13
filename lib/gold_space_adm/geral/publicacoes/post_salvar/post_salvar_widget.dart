import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'post_salvar_model.dart';
export 'post_salvar_model.dart';

class PostSalvarWidget extends StatefulWidget {
  const PostSalvarWidget({
    super.key,
    bool? salvo,
  }) : salvo = salvo ?? false;

  final bool salvo;

  @override
  State<PostSalvarWidget> createState() => _PostSalvarWidgetState();
}

class _PostSalvarWidgetState extends State<PostSalvarWidget> {
  late PostSalvarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostSalvarModel());

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
      children: [
        if (widget.salvo)
          Icon(
            Icons.bookmark,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 22.0,
          ),
        if (!widget.salvo)
          Icon(
            Icons.bookmark_border,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 22.0,
          ),
      ],
    );
  }
}
