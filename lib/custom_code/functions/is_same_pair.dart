import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

bool isSamePair(
  String a,
  String b,
) {
  final baseA = a.endsWith("_h") ? a.substring(0, a.length - 2) : a;
  final baseB = b.endsWith("_h") ? b.substring(0, b.length - 2) : b;
  return baseA == baseB && a != b;
}
