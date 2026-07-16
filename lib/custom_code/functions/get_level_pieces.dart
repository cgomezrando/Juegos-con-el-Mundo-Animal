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

List<String> getLevelPieces(String levelId) {
  switch (levelId) {
    case 'cisne':
      final list = [
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/9eqzg6pi3fyk/cisne01_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/9cir5w0sfjst/cisne02_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/xt6wv8l6x9vl/cisne03_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/cbvcql4agnpn/cisne01_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/lmtrpqvcvpk9/cisne02_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/mzgucovinjwk/cisne03_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/73cxec7dgvsx/cisne01_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/991lhvp3gku5/cisne02_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/gaitdcs0152y/cisne03_03.png',
      ];
      list.shuffle();
      return list;
    case 'elefante':
      final list = [
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/e8fejt3uwhzr/elefante01_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/4y14058nv6up/elefante02_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/et1jdxhh7o9a/elefante03_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/3d1wmc4fgbqs/elefante01_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/ps0n53xlxr5b/elefante02_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/o26udz4w9fdj/elefante03_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/0z4594wexvos/elefante01_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/7cm3qqa3wkbn/elefante02_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/hp51azvgc4xd/elefante03_03.png',
      ];
      list.shuffle();
      return list;
    case 'koala':
      final list = [
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/dei9olq4q9dn/koala01_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/5ztgw84lwlmi/koala02_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/waxwvvoqv06a/koala03_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/1fnv64h6cm5v/koala01_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/chraeivofz8f/koala02_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/vuarqggz6r40/koala03_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/efv2sc79vglr/koala01_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/u70unasm89ti/koala02_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/vuxaavfsn4u8/koala03_03.png',
      ];
      list.shuffle();
      return list;
    case 'leon':
      final list = [
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/p0fowi0imnqm/leon01_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/0lheig5q43xh/leon02_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/en4l2eyir7j6/leon03_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/huho9m7srgmd/leon01_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/4nl1b6kfoj0n/leon02_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/s3x8bah9kemr/leon03_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/ojyh4jovi6tt/leon01_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/v6g4xm5yi71o/leon02_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/675kktiyblln/leon03_03.png',
      ];
      list.shuffle();
      return list;
    case 'mono':
      final list = [
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/fy1engskla4v/puzzle01_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/7263x92j3vic/puzzle02_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/j41ltlqeiko0/puzzle03_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/7pwrgy1u4llx/puzzle01_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/ofwrg95v3o8s/puzzle02_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/wuxc48ix90uz/puzzle03_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/o8cpmnrrr7e1/puzzle01_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/oviz6gv94ene/puzzle02_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/cd6uubq6fmtn/puzzle03_03.png',
      ];
      list.shuffle();
      return list;
    case 'oso':
      final list = [
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/hiurgkh0wons/oso01_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/gdea414olmu5/oso02_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/32ypurydmb4r/oso03_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/34aimy929d3x/oso01_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/nzaacmocqsjk/oso02_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/ds9z7c5sj383/oso03_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/qluldsb499rh/oso01_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/rqmr8nvixbmi/oso02_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/d2237ikejmmw/oso03_03.png',
      ];
      list.shuffle();
      return list;
    case 'pony':
      final list = [
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/zlxdusqa94s0/pony01_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/0xl8imsnyzai/pony02_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/09ps8cnbtx11/pony03_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/1d1db8rws4c8/pony01_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/krgkcu5po3ey/pony02_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/zjnp71eqjfoy/pony03_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/8kna7vnlsp1o/pony01_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/1f6fp3o0v36c/pony02_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/aulshrbs5vq4/pony03_03.png',
      ];
      list.shuffle();
      return list;
    case 'perdiz':
      final list = [
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/po76jwdcq2l2/perdiz01_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/z31i9yvv26gj/perdiz02_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/s2v0l8wh34ex/perdiz03_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/v764bsa8ck0k/perdiz01_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/qkpa3ux5ur59/perdiz02_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/2n44r7q0vs1x/perdiz03_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/am54ef8ssyd5/perdiz01_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/hpqhlb3t3air/perdiz02_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/ix1w234he025/perdiz03_03.png',
      ];
      list.shuffle();
      return list;
    case 'pulpo':
      final list = [
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/906c1pn613mz/pulpo01_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/gra8iauvanwl/pulpo02_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/7e0u3rancyhv/pulpo03_01.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/h88t7tjopvfy/pulpo01_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/6sb9tkicjnud/pulpo02_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/eg2u70xn94jl/pulpo03_02.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/u0bdmh0mq744/pulpo01_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/werrulelqo2i/pulpo02_03.png',
        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/puzzles-4mu5eb/assets/gepsg4h2af6n/pulpo03_03.png',
      ];
      list.shuffle();
      return list;
    default:
      return [];
  }
}
