// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future handleAnimalTap(
  BuildContext context,
  int animalIndex,
) async {
  final state = FFAppState();

  final animal = state.feedAnimals[animalIndex];

  if (state.feedMatched.contains(animal)) return;

  state.feedSelectedAnimal = animalIndex;
  state.update(() {});
}
