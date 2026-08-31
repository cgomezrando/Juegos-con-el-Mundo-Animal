import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

String getHomeMatchImage(String key) {
switch (key) {
    // animales
    case "abeja":
      return "assets/images/offline/6dz1si31jlbb_abeja.png";
    case "mariposa":
      return "assets/images/offline/cre1glp9bggm_mariposa.png";
    case "pajarito":
      return "assets/images/offline/l4szm4wt47ai_pajarito.png";
    case "hormiga":
      return "assets/images/offline/cuzsmd74hrll_hormiga.png";
    case "mono":
      return "assets/images/offline/fxksay6jyop0_mono.png";
    case "perro_h":
      return "assets/images/offline/p1fho940urxd_casa_del_perro.png";
    case "gato":
      return "assets/images/offline/9iae72uwe34c_gato.png";
    case "raton":
      return "assets/images/offline/nam1e1l6n0oo_raton.png";
    case "oso_h":
      return "assets/images/offline/3bn3p807xch3_casa_del_oso.png";
    case "pez":
      return "assets/images/offline/q7pcv8ywk46u_trucha.png";
    case "conejo":
      return "assets/images/offline/lclmpcrygbxw_conejo.png";
    case "vaca":
      return "assets/images/offline/883jvfbtj6z7_vaca.png";
    // habitats (sufijo _h)
    case "abeja_h":
      return "assets/images/offline/fu3hcruwn6z4_casa_de_abeja.png";
    case "mariposa_h":
      return "assets/images/offline/l3rjfvt95u13_capullo_de_mariposa.png";
    case "pajarito_h":
      return "assets/images/offline/kkxpud734fgt_nido.png";
    case "hormiga_h":
      return "assets/images/offline/68nust2yi6k1_casa_hormiga.png";
    case "mono_h":
      return "assets/images/offline/ypv4s9wpd7be_casa_del_mono.png";
    case "perro_h":
      return "assets/images/offline/20uxqf38a9jm_casa_perro.png";
    case "gato_h":
      return "assets/images/offline/hzgleze4cglk_casa_de_gato.png";
    case "raton_h":
      return "assets/images/offline/qtqtlfyglkbb_casa_raton.png";
    case "oso_h":
      return "assets/images/offline/nv89wtrpc7tu_casa_del_oso.png";
    case "pez_h":
      return "assets/images/offline/7yuq7r6kg1t9_rio.png";
    case "conejo_h":
      return "assets/images/offline/j39xgig943iz_casa_del_conejo.png";
    case "vaca_h":
      return "assets/images/offline/3cx5lwxavaaz_pradera_vaca.png";
    default:
      return "";
  }
}
