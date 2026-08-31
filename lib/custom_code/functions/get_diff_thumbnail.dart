import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

String getDiffThumbnail(String levelId) {
  final thumbs = {
    "kidspool":
        "assets/images/offline/t7dnzxaqkzq2_foto_01_sin_borde.png",
    "kidsmountain":
        "assets/images/offline/jg8t9qogzueo_foto_02_sin_borde.png",
    "grandma":
        "assets/images/offline/v1z0dxy2b7bc_foto_03_sin_borde.png",
    "kids":
        "assets/images/offline/vva20kkb0nnu_foto_04_sin_borde.png",
    "bear":
        "assets/images/offline/mwytyiso89gd_foto_05_sin_borde.png",
    "koala":
        "assets/images/offline/okv5gk2uo0tp_foto_06_sin_borde.png",
    "swan":
        "assets/images/offline/m5re50mathgz_foto_07_sin_borde.png",
    "lynx":
        "assets/images/offline/ba3up4s2jzq8_lince_cuadrado_sin_margen_blanco.png",
    "elephant":
        "assets/images/offline/ozi5i8pagtmm_foto_09_sin_borde.png",
  };

  return thumbs[levelId] ?? "";
}
