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

List<dynamic> getDifferencePositions(String levelId) {
  final positions = {
    "kids": [
      {"x": 0.998, "y": -0.594},
      {"x": 0.706, "y": -0.903},
      {"x": 0.255, "y": 0.027},
      {"x": 0.091, "y": 0.892},
    ],
    "koala": [
      {"x": 0.149, "y": -0.581},
      {"x": 0.852, "y": 0.320},
      {"x": 0.198, "y": 0.838},
      {"x": 0.690, "y": 0.463},
    ],
    "lynx": [
      {"x": 0.351, "y": -0.842},
      {"x": 0.959, "y": 0.861},
      {"x": 0.957, "y": 0.322},
      {"x": 0.102, "y": 0.324},
    ],
    "bear": [
      {"x": 0.540, "y": -0.671},
      {"x": 0.122, "y": 0.471},
      {"x": 0.233, "y": 0.831},
      {"x": 0.799, "y": 0.495},
    ],
    "swan": [
      {"x": 0.701, "y": -0.650},
      {"x": 0.971, "y": 0.415},
      {"x": 1.000, "y": 0.831},
      {"x": 0.055, "y": 0.164},
    ],
    "elephant": [
      {"x": 0.451, "y": -0.551},
      {"x": 0.930, "y": 0.857},
      {"x": 0.139, "y": 0.825},
      {"x": 0.928, "y": -0.629},
    ],
    "grandma": [
      {"x": 0.927, "y": -0.495},
      {"x": 1.000, "y": 0.566},
      {"x": 0.154, "y": -0.918},
      {"x": 0.040, "y": 0.118},
    ],
    "kidsmountain": [
      {"x": 0.235, "y": 0.413},
      {"x": 1.000, "y": 0.730},
      {"x": 0.232, "y": -0.968},
      {"x": 0.858, "y": -0.004},
    ],
    "kidspool": [
      {"x": 0.570, "y": 0.406},
      {"x": 0.101, "y": -0.293},
      {"x": 0.950, "y": -0.549},
      {"x": 0.256, "y": -0.951},
    ],
  };

  return positions[levelId] ?? [];
}
