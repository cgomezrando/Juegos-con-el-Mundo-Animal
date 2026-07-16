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

String getDiffThumbnail(String levelId) {
  final thumbs = {
    "kidspool":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/t7dnzxaqkzq2/foto_01_sin_borde.png",
    "kidsmountain":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/jg8t9qogzueo/foto_02_sin_borde.png",
    "grandma":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/v1z0dxy2b7bc/foto_03_sin_borde.png",
    "kids":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/vva20kkb0nnu/foto_04_sin_borde.png",
    "bear":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/mwytyiso89gd/foto_05_sin_borde.png",
    "koala":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/okv5gk2uo0tp/foto_06_sin_borde.png",
    "swan":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/m5re50mathgz/foto_07_sin_borde.png",
    "lynx":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/ba3up4s2jzq8/lince_cuadrado_sin_margen_blanco.png",
    "elephant":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/ozi5i8pagtmm/foto_09_sin_borde.png",
  };

  return thumbs[levelId] ?? "";
}
