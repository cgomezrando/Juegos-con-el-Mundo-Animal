import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

String getDiffImage(String levelId) {
  final images = {
    "kids":
        "assets/images/offline/s5wp37p3jcez_ChatGPT_Image_Jul_10__2026__08_08_58_AM.png",
    "koala":
        "assets/images/offline/pwi2zqevplrd_ChatGPT_Image_Jul_10__2026__08_08_31_AM.png",
    "lynx":
        "assets/images/offline/cplt1xireeg6_ChatGPT_Image_Jul_10__2026__08_08_08_AM.png",
    "bear":
        "assets/images/offline/886znvtyojhf_ChatGPT_Image_Jul_10__2026__08_08_36_AM.png",
    "swan":
        "assets/images/offline/9qd7irk4x1md_ChatGPT_Image_Jul_10__2026__08_08_22_AM.png",
    "elephant":
        "assets/images/offline/rtxds9nf2gyx_ChatGPT_Image_Jul_10__2026__08_07_54_AM.png",
    "grandma":
        "assets/images/offline/nyf2wu2zfvfr_ChatGPT_Image_Jul_11__2026__05_13_52_PM.png",
    "kidsmountain":
        "assets/images/offline/8b7c57yae2gk_ChatGPT_Image_Jul_11__2026__06_05_05_PM.png",
    "kidspool":
        "assets/images/offline/hxm3js9cgap0_ChatGPT_Image_Jul_11__2026__07_23_39_PM.png",
  };

  return images[levelId] ?? "";
}
