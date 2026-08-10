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

List<int> getChainPath(String levelId) {
  switch (levelId) {
    case "chain1_1":
      return [6, 11, 10];
    case "chain1_2":
      return [6, 11, 16];
    case "chain1_3":
      return [5, 10, 11];
    case "chain1_4":
      return [2, 8, 7];
    case "chain1_5":
      return [14, 18, 17];
    case "chain1_6":
      return [9, 8, 12];
    case "chain1_7":
      return [3, 2, 7];
    case "chain1_8":
      return [12, 17, 18];
    case "chain1_9":
      return [14, 13, 18];
    case "chain1_10":
      return [19, 24, 23];
    case "chain2_1":
      return [7, 8, 9];
    case "chain2_2":
      return [18, 23, 24];
    case "chain2_3":
      return [13, 19, 24];
    case "chain2_4":
      return [8, 13, 19];
    case "chain2_5":
      return [2, 8, 12];
    case "chain2_6":
      return [1, 2, 7];
    case "chain2_7":
      return [10, 15, 21];
    case "chain2_8":
      return [7, 2, 8];
    case "chain2_9":
      return [4, 3, 8];
    case "chain2_10":
      return [19, 18, 23];
    case "chain3_1":
      return [1, 6, 2];
    case "chain3_2":
      return [8, 13, 17];
    case "chain3_3":
      return [18, 23, 24];
    case "chain3_4":
      return [13, 19, 23];
    case "chain3_5":
      return [6, 12, 16];
    case "chain3_6":
      return [11, 16, 21];
    case "chain3_7":
      return [11, 12, 17];
    case "chain3_8":
      return [17, 21, 22];
    case "chain3_9":
      return [17, 21, 22];
    case "chain3_10":
      return [10, 15, 20];
    case "chain4_1":
      return [12, 8, 14];
    case "chain4_2":
      return [17, 18, 19];
    case "chain4_3":
      return [13, 19, 24];
    case "chain4_4":
      return [10, 5, 11];
    case "chain4_5":
      return [16, 21, 20];
    case "chain4_6":
      return [12, 17, 16];
    case "chain4_7":
      return [12, 13, 19];
    case "chain4_8":
      return [16, 17, 22];
    case "chain4_9":
      return [11, 16, 20];
    case "chain4_10":
      return [6, 11, 17];
    case "chain5_1":
      return [6, 5, 10];
    case "chain5_2":
      return [12, 13, 18];
    case "chain5_3":
      return [2, 1, 6];
    case "chain5_4":
      return [11, 17, 18];
    case "chain5_5":
      return [13, 14, 19];
    case "chain5_6":
      return [8, 7, 12];
    case "chain5_7":
      return [16, 11, 17];
    case "chain5_8":
      return [2, 1, 6];
    case "chain5_9":
      return [19, 23, 24];
    case "chain5_10":
      return [7, 13, 12];
    case "chain6_1":
      return [6, 2, 7];
    case "chain6_2":
      return [1, 2, 6];
    case "chain6_3":
      return [13, 18, 19];
    case "chain6_4":
      return [7, 13, 8];
    case "chain6_5":
      return [15, 20, 16];
    case "chain6_6":
      return [3, 9, 14];
    case "chain6_7":
      return [1, 2, 7];
    case "chain6_8":
      return [13, 17, 21];
    case "chain6_9":
      return [1, 6, 5];
    case "chain6_10":
      return [8, 13, 19];
    case "chain7_1":
      return [1, 0, 5];
    case "chain7_2":
      return [5, 10, 11];
    case "chain7_3":
      return [9, 14, 13];
    case "chain7_4":
      return [13, 12, 17];
    case "chain7_5":
      return [11, 17, 12];
    case "chain7_6":
      return [1, 0, 5];
    case "chain7_7":
      return [8, 13, 19];
    case "chain7_8":
      return [16, 21, 20];
    case "chain7_9":
      return [9, 14, 13];
    case "chain7_10":
      return [3, 4, 9];
    case "chain8_1":
      return [13, 18, 17];
    case "chain8_2":
      return [8, 9, 14];
    case "chain8_3":
      return [4, 3, 8];
    case "chain8_4":
      return [10, 15, 21];
    case "chain8_5":
      return [18, 17, 23];
    case "chain8_6":
      return [13, 18, 17];
    case "chain8_7":
      return [20, 21, 22];
    case "chain8_8":
      return [7, 2, 8];
    case "chain8_9":
      return [16, 22, 23];
    case "chain8_10":
      return [12, 17, 23];
    case "chain9_1":
      return [8, 9, 14];
    case "chain9_2":
      return [22, 23, 24];
    case "chain9_3":
      return [19, 24, 23];
    case "chain9_4":
      return [11, 16, 22];
    case "chain9_5":
      return [4, 9, 13];
    case "chain9_6":
      return [6, 10, 11];
    case "chain9_7":
      return [8, 9, 13];
    case "chain9_8":
      return [16, 22, 23];
    case "chain9_9":
      return [17, 18, 23];
    case "chain9_10":
      return [13, 18, 19];
    default:
      return [0, 1, 2];
  }
}
