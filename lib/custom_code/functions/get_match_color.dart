import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

String getMatchColor(
  List<String> matched,
  String name,
) {
  final colors = ["FF9B4EFF", "FF4EA8FF", "FF7ED957", "FFFFB84E"];
  final idx = matched.indexOf(name);
  if (idx < 0) return "00000000";
  return colors[idx % colors.length];
}
