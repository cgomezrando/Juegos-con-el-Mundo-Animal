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

String getHidingSpot(int index) {
  const base =
      "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/";
  switch (index) {
    case 0:
      return base +
          "8mjfzbupknpr/ChatGPT_Image_Jul_12%2C_2026%2C_08_06_08_PM.png";
    case 1:
      return base +
          "uojj1nicdzfy/ChatGPT_Image_Jul_12%2C_2026%2C_08_06_14_PM.png";
    case 2:
      return base +
          "dx1grgxbnb76/ChatGPT_Image_Jul_12%2C_2026%2C_08_06_28_PM.png";
    case 3:
      return base +
          "ecitztbe6gtx/ChatGPT_Image_Jul_12%2C_2026%2C_08_06_34_PM.png";
    case 4:
      return base +
          "ncwnrz7pl8r3/ChatGPT_Image_Jul_12%2C_2026%2C_08_06_37_PM.png";
    case 5:
      return base +
          "zs3r2efj6jmm/ChatGPT_Image_Jul_12%2C_2026%2C_08_06_41_PM.png";
    case 6:
      return base +
          "fcuwzgcipyw1/ChatGPT_Image_Jul_12%2C_2026%2C_08_06_45_PM.png";
    case 7:
      return base +
          "xqjji2w0f9rw/ChatGPT_Image_Jul_12%2C_2026%2C_08_06_49_PM.png";
    case 8:
      return base +
          "cy9c8c5c4rz4/ChatGPT_Image_Jul_12%2C_2026%2C_08_06_52_PM.png";
    default:
      return base +
          "8mjfzbupknpr/ChatGPT_Image_Jul_12%2C_2026%2C_08_06_08_PM.png";
  }
}
