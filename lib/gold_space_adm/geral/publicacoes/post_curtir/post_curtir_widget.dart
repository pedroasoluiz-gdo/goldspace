import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'post_curtir_model.dart';
export 'post_curtir_model.dart';

class PostCurtirWidget extends StatefulWidget {
  const PostCurtirWidget({
    super.key,
    bool? curtiu,
  }) : curtiu = curtiu ?? false;

  final bool curtiu;

  @override
  State<PostCurtirWidget> createState() => _PostCurtirWidgetState();
}

class _PostCurtirWidgetState extends State<PostCurtirWidget> {
  late PostCurtirModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostCurtirModel());

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
        if (widget.curtiu)
          Icon(
            Icons.favorite_rounded,
            color: FlutterFlowTheme.of(context).error,
            size: 22.0,
          ),
        if (!valueOrDefault<bool>(
          widget.curtiu,
          true,
        ))
          Icon(
            Icons.favorite_border_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 22.0,
          ),
      ],
    );
  }
}
