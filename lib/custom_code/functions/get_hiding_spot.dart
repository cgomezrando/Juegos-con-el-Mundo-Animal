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

String getHidingSpot(int index) {
  const base =
      "assets/puzzles/";
  switch (index) {
    case 0:
      return base +
          "8mjfzbupknpr.png";
    case 1:
      return base +
          "uojj1nicdzfy.png";
    case 2:
      return base +
          "dx1grgxbnb76.png";
    case 3:
      return base +
          "ecitztbe6gtx.png";
    case 4:
      return base +
          "ncwnrz7pl8r3.png";
    case 5:
      return base +
          "zs3r2efj6jmm.png";
    case 6:
      return base +
          "fcuwzgcipyw1.png";
    case 7:
      return base +
          "xqjji2w0f9rw.png";
    case 8:
      return base +
          "cy9c8c5c4rz4.png";
    default:
      return base +
          "8mjfzbupknpr.png";
  }
}
