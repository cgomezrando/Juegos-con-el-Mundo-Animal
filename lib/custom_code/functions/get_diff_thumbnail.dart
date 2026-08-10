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
        "assets/puzzles/t7dnzxaqkzq2.png",
    "kidsmountain":
        "assets/puzzles/jg8t9qogzueo.png",
    "grandma":
        "assets/puzzles/v1z0dxy2b7bc.png",
    "kids":
        "assets/puzzles/vva20kkb0nnu.png",
    "bear":
        "assets/puzzles/mwytyiso89gd.png",
    "koala":
        "assets/puzzles/okv5gk2uo0tp.png",
    "swan":
        "assets/puzzles/m5re50mathgz.png",
    "lynx":
        "assets/puzzles/ba3up4s2jzq8.png",
    "elephant":
        "assets/puzzles/ozi5i8pagtmm.png",
  };

  return thumbs[levelId] ?? "";
}
