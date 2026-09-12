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

String getFoodImage(String name) {
  const base =
      "assets/puzzles/";
  switch (name) {
    case "bambu":
      return base + "znj1h0mfcu6d.png";
    case "hueso":
      return base + "9qjbgwxqqe0o.png";
    case "miel":
      return base + "tfbntgqzo7jj.png";
    case "platano":
      return base + "u81icmdzvraq.png";
    case "pradera":
      return base + "n8uaq7hm7idn.png";
    case "queso":
      return base + "xpht7hrpuqd9.png";
    case "trucha":
      return base + "q7pcv8ywk46u.png";
    case "zanahoria":
      return base + "w6rdaykusc57.png";
    default:
      return "";
  }
}
