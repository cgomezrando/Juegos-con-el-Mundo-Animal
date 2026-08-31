import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

String getFoodFor(String animal) {
  switch (animal) {
    case "panda":
      return "bambu";
    case "perro":
      return "hueso";
    case "oso":
      return "miel";
    case "mono":
      return "platano";
    case "vaca":
      return "pradera";
    case "raton":
      return "queso";
    case "gato":
      return "trucha";
    case "conejo":
      return "zanahoria";
    default:
      return "";
  }
}
