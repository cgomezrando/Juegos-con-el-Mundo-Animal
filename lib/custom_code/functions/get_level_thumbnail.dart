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

String getLevelThumbnail(String levelId) {
  switch (levelId) {
    case 'cisne':
      return 'assets/puzzles/a5mp94tl4fds.png';
    case 'elefante':
      return 'assets/puzzles/o7o8yefbfn0v.png';
    case 'koala':
      return 'assets/puzzles/nm6kfq30dppp.png';
    case 'leon':
      return 'assets/puzzles/rxp4cyzqu7hc.png';
    case 'mono':
      return 'assets/puzzles/jeijqp45d2ho.png';
    case 'oso':
      return 'assets/puzzles/y62anwf8fh15.png';
    case 'pony':
      return 'assets/puzzles/b3p1q8qav5jx.png';
    case 'perdiz':
      return 'assets/puzzles/ml3iu8c9eow7.png';
    case 'pulpo':
      return 'assets/puzzles/pza45s25fe5e.png';
    default:
      return '';
  }
}
