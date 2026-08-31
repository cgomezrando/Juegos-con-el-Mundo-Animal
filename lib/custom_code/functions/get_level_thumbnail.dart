import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

String getLevelThumbnail(String levelId) {
  switch (levelId) {
    case 'cisne':
      return 'assets/images/offline/a5mp94tl4fds_Designer__34_.png';
    case 'elefante':
      return 'assets/images/offline/o7o8yefbfn0v_Designer__33_.png';
    case 'koala':
      return 'assets/images/offline/nm6kfq30dppp_Designer__32_.png';
    case 'leon':
      return 'assets/images/offline/rxp4cyzqu7hc_Designer__29_.png';
    case 'mono':
      return 'assets/images/offline/jeijqp45d2ho_Designer__35_.png';
    case 'oso':
      return 'assets/images/offline/y62anwf8fh15_Designer__31_.png';
    case 'pony':
      return 'assets/images/offline/b3p1q8qav5jx_Designer__28_.png';
    case 'perdiz':
      return 'assets/images/offline/ml3iu8c9eow7_Designer__38_.png';
    case 'pulpo':
      return 'assets/images/offline/pza45s25fe5e_Designer__39_.png';
    default:
      return '';
  }
}
