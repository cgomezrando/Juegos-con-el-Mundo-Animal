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

List<String>? listSetAt(
  List<String> list,
  int index,
  String value,
) {
  List<String> listSetAt(List<String> list, int index, String value) {
    final copy = List<String>.from(list);
    if (index >= 0 && index < copy.length) {
      copy[index] = value;
    }
    return copy;
  }
}
