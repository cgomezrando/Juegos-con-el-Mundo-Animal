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

String getAnimalImage(String name) {
  const base =
      "assets/puzzles/";
  switch (name) {
    case "panda":
      return base + "sczvf54q8yfr.png";
    case "perro":
      return base + "v38e9o7vcgz8.png";
    case "oso":
      return base + "xb7bierotzo7.png";
    case "mono":
      return base + "fxksay6jyop0.png";
    case "vaca":
      return base + "883jvfbtj6z7.png";
    case "raton":
      return base + "nam1e1l6n0oo.png";
    case "gato":
      return base + "9iae72uwe34c.png";
    case "conejo":
      return base + "lclmpcrygbxw.png";
    default:
      return "";
  }
}
