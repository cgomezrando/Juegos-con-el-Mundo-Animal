import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

String getChainImage(String levelId) {
final img = levelId.split("_")[0];
  switch (img) {
    case "chain1":
      return "assets/images/offline/ex5qqaub7mnm_chain1.png";
    case "chain2":
      return "assets/images/offline/klbwhj3vuywv_chain2.png";
    case "chain3":
      return "assets/images/offline/fv5x9hwzffyt_chain3.png";
    case "chain4":
      return "assets/images/offline/rpnbbyc49sm3_chain4.png";
    case "chain5":
      return "assets/images/offline/lwr2opd02nyv_chain5.png";
    case "chain6":
      return "assets/images/offline/brlepqvbb2ne_chain6.png";
    case "chain7":
      return "assets/images/offline/wq4q2k114hf9_chain7.png";
    case "chain8":
      return "assets/images/offline/5y5r0lt083kp_chain8.png";
    case "chain9":
      return "assets/images/offline/gl5ttnke2kx8_chain9.png";
    default:
      return "assets/images/offline/ex5qqaub7mnm_chain1.png";
  }
}
