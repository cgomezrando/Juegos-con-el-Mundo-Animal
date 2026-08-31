import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

String getHidingSpot(int index) {
  switch (index) {
    case 0:
      return "assets/images/offline/8mjfzbupknpr_ChatGPT_Image_Jul_12__2026__08_06_08_PM.png";
    case 1:
      return "assets/images/offline/uojj1nicdzfy_ChatGPT_Image_Jul_12__2026__08_06_14_PM.png";
    case 2:
      return "assets/images/offline/dx1grgxbnb76_ChatGPT_Image_Jul_12__2026__08_06_28_PM.png";
    case 3:
      return "assets/images/offline/ecitztbe6gtx_ChatGPT_Image_Jul_12__2026__08_06_34_PM.png";
    case 4:
      return "assets/images/offline/ncwnrz7pl8r3_ChatGPT_Image_Jul_12__2026__08_06_37_PM.png";
    case 5:
      return "assets/images/offline/zs3r2efj6jmm_ChatGPT_Image_Jul_12__2026__08_06_41_PM.png";
    case 6:
      return "assets/images/offline/fcuwzgcipyw1_ChatGPT_Image_Jul_12__2026__08_06_45_PM.png";
    case 7:
      return "assets/images/offline/xqjji2w0f9rw_ChatGPT_Image_Jul_12__2026__08_06_49_PM.png";
    case 8:
      return "assets/images/offline/cy9c8c5c4rz4_ChatGPT_Image_Jul_12__2026__08_06_52_PM.png";
    default:
      return "assets/images/offline/8mjfzbupknpr_ChatGPT_Image_Jul_12__2026__08_06_08_PM.png";
  }
}
