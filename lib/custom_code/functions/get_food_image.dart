import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

String getFoodImage(String name) {
switch (name) {
    case "bambu":
      return "assets/images/offline/znj1h0mfcu6d_bambu.png";
    case "hueso":
      return "assets/images/offline/9qjbgwxqqe0o_hueso.png";
    case "miel":
      return "assets/images/offline/tfbntgqzo7jj_miel.png";
    case "platano":
      return "assets/images/offline/u81icmdzvraq_platano.png";
    case "pradera":
      return "assets/images/offline/n8uaq7hm7idn_pradera.png";
    case "queso":
      return "assets/images/offline/xpht7hrpuqd9_queso.png";
    case "trucha":
      return "assets/images/offline/q7pcv8ywk46u_trucha.png";
    case "zanahoria":
      return "assets/images/offline/w6rdaykusc57_zanahoria.png";
    default:
      return "";
  }
}
