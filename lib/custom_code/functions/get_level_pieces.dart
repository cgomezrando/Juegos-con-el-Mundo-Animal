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
        'assets/puzzles/9eqzg6pi3fyk.png',
        'assets/puzzles/9cir5w0sfjst.png',
        'assets/puzzles/xt6wv8l6x9vl.png',
        'assets/puzzles/cbvcql4agnpn.png',
        'assets/puzzles/lmtrpqvcvpk9.png',
        'assets/puzzles/mzgucovinjwk.png',
        'assets/puzzles/73cxec7dgvsx.png',
        'assets/puzzles/991lhvp3gku5.png',
        'assets/puzzles/gaitdcs0152y.png',
      ];
      list.shuffle();
      return list;
    case 'elefante':
      final list = [
        'assets/puzzles/e8fejt3uwhzr.png',
        'assets/puzzles/4y14058nv6up.png',
        'assets/puzzles/et1jdxhh7o9a.png',
        'assets/puzzles/3d1wmc4fgbqs.png',
        'assets/puzzles/ps0n53xlxr5b.png',
        'assets/puzzles/o26udz4w9fdj.png',
        'assets/puzzles/0z4594wexvos.png',
        'assets/puzzles/7cm3qqa3wkbn.png',
        'assets/puzzles/hp51azvgc4xd.png',
      ];
      list.shuffle();
      return list;
    case 'koala':
      final list = [
        'assets/puzzles/dei9olq4q9dn.png',
        'assets/puzzles/5ztgw84lwlmi.png',
        'assets/puzzles/waxwvvoqv06a.png',
        'assets/puzzles/1fnv64h6cm5v.png',
        'assets/puzzles/chraeivofz8f.png',
        'assets/puzzles/vuarqggz6r40.png',
        'assets/puzzles/efv2sc79vglr.png',
        'assets/puzzles/u70unasm89ti.png',
        'assets/puzzles/vuxaavfsn4u8.png',
      ];
      list.shuffle();
      return list;
    case 'leon':
      final list = [
        'assets/puzzles/p0fowi0imnqm.png',
        'assets/puzzles/0lheig5q43xh.png',
        'assets/puzzles/en4l2eyir7j6.png',
        'assets/puzzles/huho9m7srgmd.png',
        'assets/puzzles/4nl1b6kfoj0n.png',
        'assets/puzzles/s3x8bah9kemr.png',
        'assets/puzzles/ojyh4jovi6tt.png',
        'assets/puzzles/v6g4xm5yi71o.png',
        'assets/puzzles/675kktiyblln.png',
      ];
      list.shuffle();
      return list;
    case 'mono':
      final list = [
        'assets/puzzles/fy1engskla4v.png',
        'assets/puzzles/7263x92j3vic.png',
        'assets/puzzles/j41ltlqeiko0.png',
        'assets/puzzles/7pwrgy1u4llx.png',
        'assets/puzzles/ofwrg95v3o8s.png',
        'assets/puzzles/wuxc48ix90uz.png',
        'assets/puzzles/o8cpmnrrr7e1.png',
        'assets/puzzles/oviz6gv94ene.png',
        'assets/puzzles/cd6uubq6fmtn.png',
      ];
      list.shuffle();
      return list;
    case 'oso':
      final list = [
        'assets/puzzles/hiurgkh0wons.png',
        'assets/puzzles/gdea414olmu5.png',
        'assets/puzzles/32ypurydmb4r.png',
        'assets/puzzles/34aimy929d3x.png',
        'assets/puzzles/nzaacmocqsjk.png',
        'assets/puzzles/ds9z7c5sj383.png',
        'assets/puzzles/qluldsb499rh.png',
        'assets/puzzles/rqmr8nvixbmi.png',
        'assets/puzzles/d2237ikejmmw.png',
      ];
      list.shuffle();
      return list;
    case 'pony':
      final list = [
        'assets/puzzles/zlxdusqa94s0.png',
        'assets/puzzles/0xl8imsnyzai.png',
        'assets/puzzles/09ps8cnbtx11.png',
        'assets/puzzles/1d1db8rws4c8.png',
        'assets/puzzles/krgkcu5po3ey.png',
        'assets/puzzles/zjnp71eqjfoy.png',
        'assets/puzzles/8kna7vnlsp1o.png',
        'assets/puzzles/1f6fp3o0v36c.png',
        'assets/puzzles/aulshrbs5vq4.png',
      ];
      list.shuffle();
      return list;
    case 'perdiz':
      final list = [
        'assets/puzzles/po76jwdcq2l2.png',
        'assets/puzzles/z31i9yvv26gj.png',
        'assets/puzzles/s2v0l8wh34ex.png',
        'assets/puzzles/v764bsa8ck0k.png',
        'assets/puzzles/qkpa3ux5ur59.png',
        'assets/puzzles/2n44r7q0vs1x.png',
        'assets/puzzles/am54ef8ssyd5.png',
        'assets/puzzles/hpqhlb3t3air.png',
        'assets/puzzles/ix1w234he025.png',
      ];
      list.shuffle();
      return list;
    case 'pulpo':
      final list = [
        'assets/puzzles/906c1pn613mz.png',
        'assets/puzzles/gra8iauvanwl.png',
        'assets/puzzles/7e0u3rancyhv.png',
        'assets/puzzles/h88t7tjopvfy.png',
        'assets/puzzles/6sb9tkicjnud.png',
        'assets/puzzles/eg2u70xn94jl.png',
        'assets/puzzles/u0bdmh0mq744.png',
        'assets/puzzles/werrulelqo2i.png',
        'assets/puzzles/gepsg4h2af6n.png',
      ];
      list.shuffle();
      return list;
    default:
      return [];
  }
}
