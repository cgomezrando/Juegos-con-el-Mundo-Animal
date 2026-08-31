import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

String getAnimalImage(String name) {
switch (name) {
    case "panda":
      return "assets/images/offline/sczvf54q8yfr_panda.png";
    case "perro":
      return "assets/images/offline/v38e9o7vcgz8_perro.png";
    case "oso":
      return "assets/images/offline/xb7bierotzo7_oso.png";
    case "mono":
      return "assets/images/offline/fxksay6jyop0_mono.png";
    case "vaca":
      return "assets/images/offline/883jvfbtj6z7_vaca.png";
    case "raton":
      return "assets/images/offline/nam1e1l6n0oo_raton.png";
    case "gato":
      return "assets/images/offline/9iae72uwe34c_gato.png";
    case "conejo":
      return "assets/images/offline/lclmpcrygbxw_conejo.png";
    default:
      return "";
  }
}
