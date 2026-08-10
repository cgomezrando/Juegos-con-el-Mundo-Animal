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

String getChainImage(String levelId) {
  const base =
      "assets/puzzles/";
  final img = levelId.split("_")[0];
  switch (img) {
    case "chain1":
      return base + "ex5qqaub7mnm.png";
    case "chain2":
      return base + "klbwhj3vuywv.png";
    case "chain3":
      return base + "fv5x9hwzffyt.png";
    case "chain4":
      return base + "rpnbbyc49sm3.png";
    case "chain5":
      return base + "lwr2opd02nyv.png";
    case "chain6":
      return base + "brlepqvbb2ne.png";
    case "chain7":
      return base + "wq4q2k114hf9.png";
    case "chain8":
      return base + "5y5r0lt083kp.png";
    case "chain9":
      return base + "gl5ttnke2kx8.png";
    default:
      return base + "ex5qqaub7mnm.png";
  }
}
