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

String getChainHint(
  List<String> grid,
  List<int> path,
  int position,
) {
  if (position < 0 || position >= path.length) return "";
  final index = path[position];
  if (index < 0 || index >= grid.length) return "";
  return grid[index];
}
