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

String getDiffImage(String levelId) {
  final images = {
    "kids":
        "assets/puzzles/s5wp37p3jcez.png",
    "koala":
        "assets/puzzles/pwi2zqevplrd.png",
    "lynx":
        "assets/puzzles/cplt1xireeg6.png",
    "bear":
        "assets/puzzles/886znvtyojhf.png",
    "swan":
        "assets/puzzles/9qd7irk4x1md.png",
    "elephant":
        "assets/puzzles/rtxds9nf2gyx.png",
    "grandma":
        "assets/puzzles/nyf2wu2zfvfr.png",
    "kidsmountain":
        "assets/puzzles/8b7c57yae2gk.png",
    "kidspool":
        "assets/puzzles/hxm3js9cgap0.png",
  };

  return images[levelId] ?? "";
}
