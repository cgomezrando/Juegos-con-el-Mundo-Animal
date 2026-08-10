// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future handlePandaTap(
  BuildContext context,
  int index,
) async {
  final state = FFAppState();

  if (state.pandaRunning) return;
  if (state.pandaFound) return;

  state.update(() {
    state.pandaMoves = state.pandaMoves + 1;
  });

  if (index == state.pandaTarget) {
    // Acierto: destapa la casilla y celebra
    state.update(() {
      state.pandaFound = true;
      state.pandaVisible = index;
    });

    await Future.delayed(const Duration(milliseconds: 600));
    await handlePandaWin(context);
    return;
  }

  // Fallo
  if (state.pandaMoves == 1) {
    // Primer fallo: aviso y sigue jugando
    await mostrarAvisoPanda(context);
  } else {
    // Segundo fallo: se acabo la partida
    state.update(() {
      state.pandaRunning = true; // bloquea mas toques
      state.pandaVisible = state.pandaTarget; // enseña donde estaba
    });

    await Future.delayed(const Duration(milliseconds: 900));
    await handlePandaLose(context);
  }
}
