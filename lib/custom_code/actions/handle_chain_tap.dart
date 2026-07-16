// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future handleChainTap(
  BuildContext context,
  int index,
) async {
  final state = FFAppState();

  if (state.chainFound.contains(index)) return;
  if (state.chainPath.length < 3) return;

  final step = state.chainFound.length;

  if (state.chainPath[step] == index) {
    // Acierto
    state.update(() {
      state.chainFound = [...state.chainFound, index];
    });
  } else {
    // Fallo: reiniciar
    state.update(() {
      state.chainFound = [];
      state.chainMoves = state.chainMoves + 1;
    });
    return;
  }

  // Victoria
  if (state.chainFound.length == 3) {
    await handleChainWin(context);
  }
}
