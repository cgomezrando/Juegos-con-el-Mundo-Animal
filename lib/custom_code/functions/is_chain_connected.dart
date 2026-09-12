import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

bool isChainConnected(
  int index1,
  int index2,
) {
  final row1 = index1 ~/ 5;
  final col1 = index1 % 5;
  final row2 = index2 ~/ 5;
  final col2 = index2 % 5;

  final rowDiff = (row1 - row2).abs();
  final colDiff = (col1 - col2).abs();

  return rowDiff <= 1 && colDiff <= 1 && (rowDiff + colDiff) > 0;
}
