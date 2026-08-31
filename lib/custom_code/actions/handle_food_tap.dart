// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future handleFoodTap(
  BuildContext context,
  int foodIndex,
) async {
  final state = FFAppState();

  if (state.feedSelectedAnimal < 0) return;

  final animal = state.feedAnimals[state.feedSelectedAnimal];
  final food = state.feedFoods[foodIndex];

  if (state.feedMatched.contains(animal)) return;

  state.feedMoves = state.feedMoves + 1;

  if (getFoodFor(animal) == food) {
    state.feedMatched = [...state.feedMatched, animal];
    state.feedSelectedAnimal = -1;
    state.update(() {});

    if (state.feedMatched.length == 4) {
      await Future.delayed(const Duration(milliseconds: 500));
      await handleFeedWin(context);
    }
  } else {
    state.feedSelectedAnimal = -1;
    state.update(() {});
  }
}
