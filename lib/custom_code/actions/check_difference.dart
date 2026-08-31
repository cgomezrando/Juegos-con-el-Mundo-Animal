// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> checkDifference(
  double tapX,
  double tapY,
  String imageSide,
) async {
  var levelData =
      getDifferences(FFAppState().diffLevelId) as Map<String, dynamic>;
  var differences = levelData['differences'] as List? ?? [];

  for (int i = 0; i < differences.length; i++) {
    var diff = differences[i];
    double diffX = imageSide == "left" ? diff['x_left'] : diff['x_right'];
    double diffY = imageSide == "left" ? diff['y_left'] : diff['y_right'];
    int radius = diff['radius'];

    double distance = ((tapX - diffX).abs() + (tapY - diffY).abs()).toDouble();

    if (distance <= radius && !FFAppState().diffFound.contains(i)) {
      FFAppState().diffFound = [...FFAppState().diffFound, i];
      FFAppState().diffMoves = FFAppState().diffMoves + 1;
    }
  }
}
