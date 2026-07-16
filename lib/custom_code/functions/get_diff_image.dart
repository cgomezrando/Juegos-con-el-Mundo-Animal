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

String getDiffImage(String levelId) {
  final images = {
    "kids":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/s5wp37p3jcez/ChatGPT_Image_Jul_10%2C_2026%2C_08_08_58_AM.png",
    "koala":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/pwi2zqevplrd/ChatGPT_Image_Jul_10%2C_2026%2C_08_08_31_AM.png",
    "lynx":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/cplt1xireeg6/ChatGPT_Image_Jul_10%2C_2026%2C_08_08_08_AM.png",
    "bear":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/886znvtyojhf/ChatGPT_Image_Jul_10%2C_2026%2C_08_08_36_AM.png",
    "swan":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/9qd7irk4x1md/ChatGPT_Image_Jul_10%2C_2026%2C_08_08_22_AM.png",
    "elephant":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/rtxds9nf2gyx/ChatGPT_Image_Jul_10%2C_2026%2C_08_07_54_AM.png",
    "grandma":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/nyf2wu2zfvfr/ChatGPT_Image_Jul_11%2C_2026%2C_05_13_52_PM.png",
    "kidsmountain":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/8b7c57yae2gk/ChatGPT_Image_Jul_11%2C_2026%2C_06_05_05_PM.png",
    "kidspool":
        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/hxm3js9cgap0/ChatGPT_Image_Jul_11%2C_2026%2C_07_23_39_PM.png",
  };

  return images[levelId] ?? "";
}
