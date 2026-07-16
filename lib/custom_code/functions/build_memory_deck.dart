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

List<String> buildMemoryDeck(List<String> images) {
  final deck = <String>[];
  for (final img in images) {
    deck.add(img);
    deck.add(img);
  }
  deck.shuffle();
  return deck;
}
