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

String getHomeMatchImage(String key) {
  const base =
      "assets/puzzles/";
  switch (key) {
    // animales
    case "abeja":
      return base + "6dz1si31jlbb.png";
    case "mariposa":
      return base + "cre1glp9bggm.png";
    case "pajarito":
      return base + "l4szm4wt47ai.png";
    case "hormiga":
      return base + "cuzsmd74hrll.png";
    case "mono":
      return base + "fxksay6jyop0.png";
    case "perro":
      return base + "v38e9o7vcgz8.png";
    case "gato":
      return base + "9iae72uwe34c.png";
    case "raton":
      return base + "nam1e1l6n0oo.png";
    case "oso":
      return base + "xb7bierotzo7.png";
    case "pez":
      return base + "q7pcv8ywk46u.png";
    case "conejo":
      return base + "lclmpcrygbxw.png";
    case "vaca":
      return base + "883jvfbtj6z7.png";
    // habitats (sufijo _h)
    case "abeja_h":
      return base + "fu3hcruwn6z4.png";
    case "mariposa_h":
      return base + "l3rjfvt95u13.png";
    case "pajarito_h":
      return base + "kkxpud734fgt.png";
    case "hormiga_h":
      return base + "68nust2yi6k1.png";
    case "mono_h":
      return base + "ypv4s9wpd7be.png";
    case "perro_h":
      return base + "p1fho940urxd.png";
    case "gato_h":
      return base + "hzgleze4cglk.png";
    case "raton_h":
      return base + "qtqtlfyglkbb.png";
    case "oso_h":
      return base + "3bn3p807xch3.png";
    case "pez_h":
      return base + "7yuq7r6kg1t9.png";
    case "conejo_h":
      return base + "j39xgig943iz.png";
    case "vaca_h":
      return base + "3cx5lwxavaaz.png";
    default:
      return "";
  }
}
