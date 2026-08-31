import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
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
  final disponibles = all.where((a) => !current.contains(a)).toList();
  disponibles.shuffle();
  return disponibles.take(6).toList();
}
