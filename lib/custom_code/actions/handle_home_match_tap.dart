// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future handleHomeMatchTap(
  BuildContext context,
  int index,
) async {
  final state = FFAppState();

  if (state.hmLock) return;
  if (state.hmMatched.contains(index)) return;
  if (state.hmFlipped.contains(index)) return;

  // Voltear esta carta
  state.hmFlipped = [...state.hmFlipped, index];
  state.update(() {});

  if (state.hmFlipped.length < 2) return;

  // Hay dos: bloquear y contar
  state.hmLock = true;
  state.hmMoves = state.hmMoves + 1;
  state.update(() {});

  final a = state.hmFlipped[0];
  final b = state.hmFlipped[1];

  await Future.delayed(const Duration(milliseconds: 1500));

  if (isSamePair(state.hmCards[a], state.hmCards[b])) {
    state.hmMatched = [...state.hmMatched, a, b];
  }
  state.hmFlipped = [];
  state.hmLock = false;
  state.update(() {});

  // Victoria: las 12 emparejadas
  if (state.hmMatched.length == state.hmCards.length) {
    await Future.delayed(const Duration(milliseconds: 400));
    await handleHomeMatchWin(context);
  }
}
