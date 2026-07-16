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
import 'puzzle_screen_model.dart';
export 'puzzle_screen_model.dart';

class PuzzleScreenWidget extends StatefulWidget {
  const PuzzleScreenWidget({super.key});

  static String routeName = 'PuzzleScreen';
  static String routePath = '/puzzleScreen';

  @override
  State<PuzzleScreenWidget> createState() => _PuzzleScreenWidgetState();
}

class _PuzzleScreenWidgetState extends State<PuzzleScreenWidget> {
  late PuzzleScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PuzzleScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.resetBoardSlots();
      FFAppState().puzzleRows = 3;
      FFAppState().puzzleCols = 3;
      FFAppState().piecesPlaced = 0;
      FFAppState().selectedPieceURL = '';
      FFAppState().trayPieces = functions
          .getLevelPieces(FFAppState().selectedLevelId)
          .toList()
          .cast<String>();
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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/Designer_(30).png',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                                width: 280.8,
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
                                              fontSize: 64.0,
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
                                        '🧩 Construye la imagen\n',
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
                                              fontSize: 64.0,
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
                                        'Arrastra las piezas a su lugar',
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
                                              fontSize: 45.0,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0),
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                        ),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).tertiary,
                          width: 10.0,
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (functions.getPieceIndex(
                                            FFAppState().selectedPieceURL) ==
                                        1) {
                                      FFAppState().updateBoardSlotsAtIndex(
                                        1,
                                        (_) => FFAppState().selectedPieceURL,
                                      );
                                      safeSetState(() {});
                                      FFAppState().removeFromTrayPieces(
                                          FFAppState().selectedPieceURL);
                                      safeSetState(() {});
                                      FFAppState().piecesPlaced =
                                          FFAppState().piecesPlaced + 1;
                                      safeSetState(() {});
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                      await actions.handlePuzzleWin(
                                        context,
                                      );
                                    } else {
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width: 250.0,
                                    height: 250.0,
                                    decoration: BoxDecoration(),
                                    child: Builder(
                                      builder: (context) {
                                        if (FFAppState()
                                                .boardSlots
                                                .elementAtOrNull(1) !=
                                            '') {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.network(
                                              '${FFAppState().boardSlots.elementAtOrNull(1)}',
                                              width: 200.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        } else {
                                          return Opacity(
                                            opacity: 0.5,
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEAF6FF),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 8.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (functions.getPieceIndex(
                                            FFAppState().selectedPieceURL) ==
                                        4) {
                                      FFAppState().updateBoardSlotsAtIndex(
                                        4,
                                        (_) => FFAppState().selectedPieceURL,
                                      );
                                      safeSetState(() {});
                                      FFAppState().removeFromTrayPieces(
                                          FFAppState().selectedPieceURL);
                                      safeSetState(() {});
                                      FFAppState().piecesPlaced =
                                          FFAppState().piecesPlaced + 1;
                                      safeSetState(() {});
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                      await actions.handlePuzzleWin(
                                        context,
                                      );
                                    } else {
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width: 250.0,
                                    height: 250.0,
                                    decoration: BoxDecoration(),
                                    child: Builder(
                                      builder: (context) {
                                        if (FFAppState()
                                                .boardSlots
                                                .elementAtOrNull(4) !=
                                            '') {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.network(
                                              '${FFAppState().boardSlots.elementAtOrNull(4)}',
                                              width: 200.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        } else {
                                          return Opacity(
                                            opacity: 0.5,
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEAF6FF),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 8.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (functions.getPieceIndex(
                                            FFAppState().selectedPieceURL) ==
                                        7) {
                                      FFAppState().updateBoardSlotsAtIndex(
                                        7,
                                        (_) => FFAppState().selectedPieceURL,
                                      );
                                      safeSetState(() {});
                                      FFAppState().removeFromTrayPieces(
                                          FFAppState().selectedPieceURL);
                                      safeSetState(() {});
                                      FFAppState().piecesPlaced =
                                          FFAppState().piecesPlaced + 1;
                                      safeSetState(() {});
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                      await actions.handlePuzzleWin(
                                        context,
                                      );
                                    } else {
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width: 250.0,
                                    height: 250.0,
                                    decoration: BoxDecoration(),
                                    child: Builder(
                                      builder: (context) {
                                        if (FFAppState()
                                                .boardSlots
                                                .elementAtOrNull(7) !=
                                            '') {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.network(
                                              '${FFAppState().boardSlots.elementAtOrNull(7)}',
                                              width: 200.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        } else {
                                          return Opacity(
                                            opacity: 0.5,
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEAF6FF),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 8.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (functions.getPieceIndex(
                                            FFAppState().selectedPieceURL) ==
                                        2) {
                                      FFAppState().updateBoardSlotsAtIndex(
                                        2,
                                        (_) => FFAppState().selectedPieceURL,
                                      );
                                      safeSetState(() {});
                                      FFAppState().removeFromTrayPieces(
                                          FFAppState().selectedPieceURL);
                                      safeSetState(() {});
                                      FFAppState().piecesPlaced =
                                          FFAppState().piecesPlaced + 1;
                                      safeSetState(() {});
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                      await actions.handlePuzzleWin(
                                        context,
                                      );
                                    } else {
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width: 250.0,
                                    height: 250.0,
                                    decoration: BoxDecoration(),
                                    child: Builder(
                                      builder: (context) {
                                        if (FFAppState()
                                                .boardSlots
                                                .elementAtOrNull(2) !=
                                            '') {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.network(
                                              '${FFAppState().boardSlots.elementAtOrNull(2)}',
                                              width: 200.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        } else {
                                          return Opacity(
                                            opacity: 0.5,
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEAF6FF),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 8.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (functions.getPieceIndex(
                                            FFAppState().selectedPieceURL) ==
                                        5) {
                                      FFAppState().updateBoardSlotsAtIndex(
                                        5,
                                        (_) => FFAppState().selectedPieceURL,
                                      );
                                      safeSetState(() {});
                                      FFAppState().removeFromTrayPieces(
                                          FFAppState().selectedPieceURL);
                                      safeSetState(() {});
                                      FFAppState().piecesPlaced =
                                          FFAppState().piecesPlaced + 1;
                                      safeSetState(() {});
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                      await actions.handlePuzzleWin(
                                        context,
                                      );
                                    } else {
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width: 250.0,
                                    height: 250.0,
                                    decoration: BoxDecoration(),
                                    child: Builder(
                                      builder: (context) {
                                        if (FFAppState()
                                                .boardSlots
                                                .elementAtOrNull(5) !=
                                            '') {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.network(
                                              '${FFAppState().boardSlots.elementAtOrNull(5)}',
                                              width: 200.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        } else {
                                          return Opacity(
                                            opacity: 0.5,
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEAF6FF),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 8.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (functions.getPieceIndex(
                                            FFAppState().selectedPieceURL) ==
                                        8) {
                                      FFAppState().updateBoardSlotsAtIndex(
                                        8,
                                        (_) => FFAppState().selectedPieceURL,
                                      );
                                      safeSetState(() {});
                                      FFAppState().removeFromTrayPieces(
                                          FFAppState().selectedPieceURL);
                                      safeSetState(() {});
                                      FFAppState().piecesPlaced =
                                          FFAppState().piecesPlaced + 1;
                                      safeSetState(() {});
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                      await actions.handlePuzzleWin(
                                        context,
                                      );
                                    } else {
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width: 250.0,
                                    height: 250.0,
                                    decoration: BoxDecoration(),
                                    child: Builder(
                                      builder: (context) {
                                        if (FFAppState()
                                                .boardSlots
                                                .elementAtOrNull(8) !=
                                            '') {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.network(
                                              '${FFAppState().boardSlots.elementAtOrNull(8)}',
                                              width: 200.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        } else {
                                          return Opacity(
                                            opacity: 0.5,
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEAF6FF),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 8.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (functions.getPieceIndex(
                                            FFAppState().selectedPieceURL) ==
                                        3) {
                                      FFAppState().updateBoardSlotsAtIndex(
                                        3,
                                        (_) => FFAppState().selectedPieceURL,
                                      );
                                      safeSetState(() {});
                                      FFAppState().removeFromTrayPieces(
                                          FFAppState().selectedPieceURL);
                                      safeSetState(() {});
                                      FFAppState().piecesPlaced =
                                          FFAppState().piecesPlaced + 1;
                                      safeSetState(() {});
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                      await actions.handlePuzzleWin(
                                        context,
                                      );
                                    } else {
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width: 250.0,
                                    height: 250.0,
                                    decoration: BoxDecoration(),
                                    child: Builder(
                                      builder: (context) {
                                        if (FFAppState()
                                                .boardSlots
                                                .elementAtOrNull(3) !=
                                            '') {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.network(
                                              '${FFAppState().boardSlots.elementAtOrNull(3)}',
                                              width: 200.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        } else {
                                          return Opacity(
                                            opacity: 0.5,
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEAF6FF),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 8.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (functions.getPieceIndex(
                                            FFAppState().selectedPieceURL) ==
                                        6) {
                                      FFAppState().updateBoardSlotsAtIndex(
                                        6,
                                        (_) => FFAppState().selectedPieceURL,
                                      );
                                      safeSetState(() {});
                                      FFAppState().removeFromTrayPieces(
                                          FFAppState().selectedPieceURL);
                                      safeSetState(() {});
                                      FFAppState().piecesPlaced =
                                          FFAppState().piecesPlaced + 1;
                                      safeSetState(() {});
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                      await actions.handlePuzzleWin(
                                        context,
                                      );
                                    } else {
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width: 250.0,
                                    height: 250.0,
                                    decoration: BoxDecoration(),
                                    child: Builder(
                                      builder: (context) {
                                        if (FFAppState()
                                                .boardSlots
                                                .elementAtOrNull(6) !=
                                            '') {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.network(
                                              '${FFAppState().boardSlots.elementAtOrNull(6)}',
                                              width: 200.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        } else {
                                          return Opacity(
                                            opacity: 0.5,
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEAF6FF),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 8.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (functions.getPieceIndex(
                                            FFAppState().selectedPieceURL) ==
                                        9) {
                                      FFAppState().updateBoardSlotsAtIndex(
                                        9,
                                        (_) => FFAppState().selectedPieceURL,
                                      );
                                      safeSetState(() {});
                                      FFAppState().removeFromTrayPieces(
                                          FFAppState().selectedPieceURL);
                                      safeSetState(() {});
                                      FFAppState().piecesPlaced =
                                          FFAppState().piecesPlaced + 1;
                                      safeSetState(() {});
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                      await actions.handlePuzzleWin(
                                        context,
                                      );
                                    } else {
                                      FFAppState().selectedPieceURL = '';
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width: 250.0,
                                    height: 250.0,
                                    decoration: BoxDecoration(),
                                    child: Builder(
                                      builder: (context) {
                                        if (FFAppState()
                                                .boardSlots
                                                .elementAtOrNull(9) !=
                                            '') {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.network(
                                              '${FFAppState().boardSlots.elementAtOrNull(9)}',
                                              width: 200.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        } else {
                                          return Opacity(
                                            opacity: 0.5,
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEAF6FF),
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          width: 250.0,
                          decoration: BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              final pieza = FFAppState().trayPieces.toList();

                              return GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0,
                                  childAspectRatio: 1.0,
                                ),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: pieza.length,
                                itemBuilder: (context, piezaIndex) {
                                  final piezaItem = pieza[piezaIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().selectedPieceURL = piezaItem;
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 130.0,
                                      height: 130.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12.0),
                                          topRight: Radius.circular(12.0),
                                          bottomLeft: Radius.circular(12.0),
                                          bottomRight: Radius.circular(12.0),
                                        ),
                                        border: Border.all(
                                          color: FFAppState()
                                                      .selectedPieceURL ==
                                                  piezaItem
                                              ? FlutterFlowTheme.of(context)
                                                  .warning
                                              : Color(0x00000000),
                                          width: 5.0,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          '${piezaItem}',
                                          width: 130.0,
                                          height: 130.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
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
