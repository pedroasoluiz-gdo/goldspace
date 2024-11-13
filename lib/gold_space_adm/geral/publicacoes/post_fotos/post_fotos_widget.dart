import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'post_fotos_model.dart';
export 'post_fotos_model.dart';

class PostFotosWidget extends StatefulWidget {
  const PostFotosWidget({
    super.key,
    required this.listPicture,
    int? idPubli,
  }) : idPubli = idPubli ?? 0;

  final List<String>? listPicture;
  final int idPubli;

  @override
  State<PostFotosWidget> createState() => _PostFotosWidgetState();
}

class _PostFotosWidgetState extends State<PostFotosWidget> {
  late PostFotosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostFotosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (widget.listPicture!.length > 1)
          Builder(
            builder: (context) {
              final imagens = widget.listPicture!.map((e) => e).toList();

              return SizedBox(
                width: 600.0,
                height: 600.0,
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                      child: PageView.builder(
                        controller: _model.pageViewController ??=
                            PageController(
                                initialPage:
                                    max(0, min(0, imagens.length - 1))),
                        scrollDirection: Axis.horizontal,
                        itemCount: imagens.length,
                        itemBuilder: (context, imagensIndex) {
                          final imagensItem = imagens[imagensIndex];
                          return InkWell(
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
                                      valueOrDefault<String>(
                                        imagensItem,
                                        'https://picsum.photos/seed/212/600',
                                      ),
                                      fit: BoxFit.contain,
                                      cacheWidth: 1200,
                                      cacheHeight: 1200,
                                    ),
                                    allowRotation: false,
                                    tag: valueOrDefault<String>(
                                      imagensItem,
                                      'https://picsum.photos/seed/212/600' '$imagensIndex',
                                    ),
                                    useHeroAnimation: true,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: valueOrDefault<String>(
                                imagensItem,
                                'https://picsum.photos/seed/212/600' '$imagensIndex',
                              ),
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    imagensItem,
                                    'https://picsum.photos/seed/212/600',
                                  ),
                                  width: 1200.0,
                                  height: 1200.0,
                                  fit: BoxFit.cover,
                                  cacheWidth: 1200,
                                  cacheHeight: 1200,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: _model.pageViewController ??=
                              PageController(
                                  initialPage:
                                      max(0, min(0, imagens.length - 1))),
                          count: imagens.length,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) async {
                            await _model.pageViewController!.animateToPage(
                              i,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                            safeSetState(() {});
                          },
                          effect: smooth_page_indicator.SlideEffect(
                            spacing: 6.0,
                            radius: 16.0,
                            dotWidth: 6.0,
                            dotHeight: 6.0,
                            dotColor: FlutterFlowTheme.of(context).alternate,
                            activeDotColor:
                                FlutterFlowTheme.of(context).primary,
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        if (widget.listPicture!.length <= 1)
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
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
                        valueOrDefault<String>(
                          widget.listPicture?.first,
                          'https://picsum.photos/seed/67/600',
                        ),
                        fit: BoxFit.contain,
                        cacheWidth: 1200,
                        cacheHeight: 1200,
                      ),
                      allowRotation: false,
                      tag: valueOrDefault<String>(
                        widget.listPicture?.first,
                        'https://picsum.photos/seed/67/600',
                      ),
                      useHeroAnimation: true,
                    ),
                  ),
                );
              },
              child: Hero(
                tag: valueOrDefault<String>(
                  widget.listPicture?.first,
                  'https://picsum.photos/seed/67/600',
                ),
                transitionOnUserGestures: true,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    valueOrDefault<String>(
                      widget.listPicture?.first,
                      'https://picsum.photos/seed/67/600',
                    ),
                    width: 1200.0,
                    height: 1200.0,
                    fit: BoxFit.cover,
                    cacheWidth: 1200,
                    cacheHeight: 1200,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
