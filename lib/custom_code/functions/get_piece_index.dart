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

int getPieceIndex(String url) {
  final fileName = url.split('/').last;
  final noExt = fileName.split('.').first;

  if (noExt.length < 5) return -1;
  final coords = noExt.substring(noExt.length - 5);
  final parts = coords.split('_');
  if (parts.length != 2) return -1;

  final col = int.tryParse(parts[0]) ?? -1;
  final fila = int.tryParse(parts[1]) ?? -1;
  if (col < 1 || fila < 1) return -1;

  return (fila - 1) * 3 + col;
}
