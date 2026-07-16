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

List<dynamic>? getDifferences(String levelId) {
  Map<String, dynamic> getDifferences(String levelId) {
    final allDifferences = {
      "koala": {
        "image":
            "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/pwi2zqevplrd/ChatGPT_Image_Jul_10%2C_2026%2C_08_08_31_AM.png",
        "differences": [
          {
            "x_left": 103,
            "y_left": 274,
            "x_right": 390,
            "y_right": 272,
            "radius": 45
          },
          {
            "x_left": 138,
            "y_left": 902,
            "x_right": 567,
            "y_right": 692,
            "radius": 45
          },
          {
            "x_left": 553,
            "y_left": 671,
            "x_right": 565,
            "y_right": 958,
            "radius": 45
          },
          {
            "x_left": 586,
            "y_left": 981,
            "x_right": 137,
            "y_right": 953,
            "radius": 45
          }
        ]
      },
      "niños": {
        "image":
            "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/s5wp37p3jcez/ChatGPT_Image_Jul_10%2C_2026%2C_08_08_58_AM.png",
        "differences": [
          {
            "x_left": 64,
            "y_left": 959,
            "x_right": 699,
            "y_right": 272,
            "radius": 45
          },
          {
            "x_left": 167,
            "y_left": 555,
            "x_right": 657,
            "y_right": 267,
            "radius": 45
          },
          {
            "x_left": 653,
            "y_left": 256,
            "x_right": 165,
            "y_right": 557,
            "radius": 45
          },
          {
            "x_left": 550,
            "y_left": 98,
            "x_right": 586,
            "y_right": 128,
            "radius": 45
          }
        ]
      },
      "lince": {
        "image":
            "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/cplt1xireeg6/ChatGPT_Image_Jul_10%2C_2026%2C_08_08_08_AM.png",
        "differences": [
          {
            "x_left": 228,
            "y_left": 134,
            "x_right": 229,
            "y_right": 140,
            "radius": 45
          },
          {
            "x_left": 567,
            "y_left": 725,
            "x_right": 62,
            "y_right": 712,
            "radius": 45
          },
          {
            "x_left": 607,
            "y_left": 940,
            "x_right": 630,
            "y_right": 951,
            "radius": 45
          },
          {
            "x_left": 620,
            "y_left": 688,
            "x_right": 624,
            "y_right": 708,
            "radius": 45
          }
        ]
      },
      "osito": {
        "image":
            "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/886znvtyojhf/ChatGPT_Image_Jul_10%2C_2026%2C_08_08_36_AM.png",
        "differences": [
          {
            "x_left": 367,
            "y_left": 212,
            "x_right": 525,
            "y_right": 779,
            "radius": 45
          },
          {
            "x_left": 78,
            "y_left": 758,
            "x_right": 157,
            "y_right": 938,
            "radius": 45
          },
          {
            "x_left": 168,
            "y_left": 325,
            "x_right": 78,
            "y_right": 219,
            "radius": 45
          },
          {
            "x_left": 538,
            "y_left": 782,
            "x_right": 78,
            "y_right": 761,
            "radius": 45
          }
        ]
      },
      "cisne": {
        "image":
            "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/9qd7irk4x1md/ChatGPT_Image_Jul_10%2C_2026%2C_08_08_22_AM.png",
        "differences": [
          {
            "x_left": 659,
            "y_left": 940,
            "x_right": 532,
            "y_right": 619,
            "radius": 45
          },
          {
            "x_left": 631,
            "y_left": 706,
            "x_right": 632,
            "y_right": 748,
            "radius": 45
          },
          {
            "x_left": 470,
            "y_left": 230,
            "x_right": 662,
            "y_right": 941,
            "radius": 45
          },
          {
            "x_left": 45,
            "y_left": 611,
            "x_right": 464,
            "y_right": 230,
            "radius": 45
          }
        ]
      },
      "elefante": {
        "image":
            "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/rtxds9nf2gyx/ChatGPT_Image_Jul_10%2C_2026%2C_08_07_54_AM.png",
        "differences": [
          {
            "x_left": 608,
            "y_left": 941,
            "x_right": 360,
            "y_right": 107,
            "radius": 45
          },
          {
            "x_left": 100,
            "y_left": 929,
            "x_right": 305,
            "y_right": 280,
            "radius": 45
          },
          {
            "x_left": 293,
            "y_left": 278,
            "x_right": 612,
            "y_right": 932,
            "radius": 45
          },
          {
            "x_left": 315,
            "y_left": 115,
            "x_right": 101,
            "y_right": 101,
            "radius": 45
          }
        ]
      }
    };

    return allDifferences[levelId] ?? {};
  }
}
