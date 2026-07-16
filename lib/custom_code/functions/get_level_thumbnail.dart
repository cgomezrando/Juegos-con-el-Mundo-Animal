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
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/a5mp94tl4fds/Designer_(34).png';
    case 'elefante':
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/o7o8yefbfn0v/Designer_(33).png';
    case 'koala':
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/nm6kfq30dppp/Designer_(32).png';
    case 'leon':
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/rxp4cyzqu7hc/Designer_(29).png';
    case 'mono':
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/jeijqp45d2ho/Designer_(35).png';
    case 'oso':
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/y62anwf8fh15/Designer_(31).png';
    case 'pony':
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/b3p1q8qav5jx/Designer_(28).png';
    case 'perdiz':
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/ml3iu8c9eow7/Designer_(38).png';
    case 'pulpo':
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/pza45s25fe5e/Designer_(39).png';
    default:
      return '';
  }
}
