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

List<String> pickHomeMatchPairs(List<String> current) {
  final all = [
    "abeja",
    "mariposa",
    "pajarito",
    "hormiga",
    "mono",
    "perro",
    "gato",
    "raton",
    "oso",
    "pez",
    "conejo",
    "vaca"
  ];
  all.shuffle();
  // Evita repetir mas de 2 de la ronda anterior
  final elegidas = <String>[];
  for (final a in all) {
    if (elegidas.length >= 6) break;
    final repetidas = elegidas.where((e) => current.contains(e)).length;
    if (current.contains(a) && repetidas >= 2) continue;
    elegidas.add(a);
  }
  return elegidas;
}
