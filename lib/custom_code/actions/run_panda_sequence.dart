// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

Future runPandaSequence(BuildContext context) async {
  final state = FFAppState();
  final rnd = Random();

  state.update(() {
    state.pandaRunning = true;
    state.pandaFound = false;
    state.pandaVisible = -1;
  });

  await Future.delayed(const Duration(milliseconds: 600));

  // Secuencia acelerada: empieza lenta, acaba rapida
  int delay = 700;
  int anterior = -1;

  for (int paso = 0; paso < 14; paso++) {
    // Elige una casilla distinta a la anterior
    int casilla;
    do {
      casilla = rnd.nextInt(9);
    } while (casilla == anterior);
    anterior = casilla;

    // Destapa
    state.update(() {
      state.pandaVisible = casilla;
    });
    await Future.delayed(Duration(milliseconds: delay));

    // Tapa
    state.update(() {
      state.pandaVisible = -1;
    });
    await Future.delayed(const Duration(milliseconds: 120));

    // Acelera
    delay = (delay * 0.82).round();
    if (delay < 180) delay = 180;
  }

  // La ultima casilla es la respuesta
  state.update(() {
    state.pandaTarget = anterior;
    state.pandaRunning = false;
  });
}
