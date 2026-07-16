import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'differences_screen_model.dart';
export 'differences_screen_model.dart';

class DifferencesScreenWidget extends StatefulWidget {
  const DifferencesScreenWidget({super.key});

  static String routeName = 'DifferencesScreen';
  static String routePath = '/differencesScreen';

  @override
  State<DifferencesScreenWidget> createState() =>
      _DifferencesScreenWidgetState();
}

class _DifferencesScreenWidgetState extends State<DifferencesScreenWidget> {
  late DifferencesScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DifferencesScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().diffFound = [];
      safeSetState(() {});
      FFAppState().diffMoves = 0;
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      body: Container(
        height: 1366.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/Designer_(30).png',
            ).image,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      height: 163.2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).primary,
                            FlutterFlowTheme.of(context).error
                          ],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(1.0, 0.0),
                          end: AlignmentDirectional(-1.0, 0),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(HomeScreenWidget.routeName);
                              },
                              child: Container(
                                width: 257.39,
                                height: 100.0,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: Colors.white,
                                      size: 88.0,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Menú |',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.baloo2(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              fontSize: 58.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Text(
                                        '🔍 Encuentra las diferencias\n',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.baloo2(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              fontSize: 58.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              lineHeight: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Haz click en la imagen de la derecha',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.baloo2(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              fontSize: 42.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              lineHeight: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: 800.0,
                          height: 600.0,
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: 800.0,
                                  height: 600.0,
                                  decoration: BoxDecoration(),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      '${functions.getDiffImage(FFAppState().diffLevelId)}',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(
                                    valueOrDefault<double>(
                                      functions.getDiffX(
                                          FFAppState().diffLevelId, 0),
                                      0.0,
                                    ),
                                    valueOrDefault<double>(
                                      functions.getDiffY(
                                          FFAppState().diffLevelId, 0),
                                      0.0,
                                    )),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (!FFAppState().diffFound.contains(0)) {
                                      FFAppState().addToDiffFound(0);
                                      safeSetState(() {});
                                      if (FFAppState().diffFound.length == 4) {
                                        await actions.handleDiffWin(
                                          context,
                                        );
                                      }
                                    }
                                  },
                                  child: Container(
                                    width: 75.0,
                                    height: 75.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                              if (FFAppState().diffFound.contains(0))
                                Align(
                                  alignment: AlignmentDirectional(
                                      valueOrDefault<double>(
                                        functions.getDiffX(
                                            FFAppState().diffLevelId, 0),
                                        0.0,
                                      ),
                                      valueOrDefault<double>(
                                        functions.getDiffY(
                                            FFAppState().diffLevelId, 0),
                                        0.0,
                                      )),
                                  child: Container(
                                    width: 75.0,
                                    height: 75.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFF09B409),
                                        width: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                              Align(
                                alignment: AlignmentDirectional(
                                    valueOrDefault<double>(
                                      functions.getDiffX(
                                          FFAppState().diffLevelId, 1),
                                      0.0,
                                    ),
                                    valueOrDefault<double>(
                                      functions.getDiffY(
                                          FFAppState().diffLevelId, 1),
                                      0.0,
                                    )),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (!FFAppState().diffFound.contains(1)) {
                                      FFAppState().addToDiffFound(1);
                                      safeSetState(() {});
                                      if (FFAppState().diffFound.length == 4) {
                                        await actions.handleDiffWin(
                                          context,
                                        );
                                      }
                                    }
                                  },
                                  child: Container(
                                    width: 75.0,
                                    height: 75.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                              if (FFAppState().diffFound.contains(1))
                                Align(
                                  alignment: AlignmentDirectional(
                                      valueOrDefault<double>(
                                        functions.getDiffX(
                                            FFAppState().diffLevelId, 1),
                                        0.0,
                                      ),
                                      valueOrDefault<double>(
                                        functions.getDiffY(
                                            FFAppState().diffLevelId, 1),
                                        0.0,
                                      )),
                                  child: Container(
                                    width: 75.0,
                                    height: 75.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFF09B409),
                                        width: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                              Align(
                                alignment: AlignmentDirectional(
                                    valueOrDefault<double>(
                                      functions.getDiffX(
                                          FFAppState().diffLevelId, 2),
                                      0.0,
                                    ),
                                    valueOrDefault<double>(
                                      functions.getDiffY(
                                          FFAppState().diffLevelId, 2),
                                      0.0,
                                    )),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (!FFAppState().diffFound.contains(2)) {
                                      FFAppState().addToDiffFound(2);
                                      safeSetState(() {});
                                      if (FFAppState().diffFound.length == 4) {
                                        await actions.handleDiffWin(
                                          context,
                                        );
                                      }
                                    }
                                  },
                                  child: Container(
                                    width: 75.0,
                                    height: 75.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                              if (FFAppState().diffFound.contains(2))
                                Align(
                                  alignment: AlignmentDirectional(
                                      valueOrDefault<double>(
                                        functions.getDiffX(
                                            FFAppState().diffLevelId, 2),
                                        0.0,
                                      ),
                                      valueOrDefault<double>(
                                        functions.getDiffY(
                                            FFAppState().diffLevelId, 2),
                                        0.0,
                                      )),
                                  child: Container(
                                    width: 75.0,
                                    height: 75.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFF09B409),
                                        width: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                              Align(
                                alignment: AlignmentDirectional(
                                    valueOrDefault<double>(
                                      functions.getDiffX(
                                          FFAppState().diffLevelId, 3),
                                      0.0,
                                    ),
                                    valueOrDefault<double>(
                                      functions.getDiffY(
                                          FFAppState().diffLevelId, 3),
                                      0.0,
                                    )),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (!FFAppState().diffFound.contains(3)) {
                                      FFAppState().addToDiffFound(3);
                                      safeSetState(() {});
                                      if (FFAppState().diffFound.length == 4) {
                                        await actions.handleDiffWin(
                                          context,
                                        );
                                      }
                                    }
                                  },
                                  child: Container(
                                    width: 75.0,
                                    height: 75.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                              if (FFAppState().diffFound.contains(3))
                                Align(
                                  alignment: AlignmentDirectional(
                                      valueOrDefault<double>(
                                        functions.getDiffX(
                                            FFAppState().diffLevelId, 3),
                                        0.0,
                                      ),
                                      valueOrDefault<double>(
                                        functions.getDiffY(
                                            FFAppState().diffLevelId, 3),
                                        0.0,
                                      )),
                                  child: Container(
                                    width: 75.0,
                                    height: 75.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFF09B409),
                                        width: 10.0,
                                      ),
                                    ),
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
        ),
      ),
    );
  }
}
