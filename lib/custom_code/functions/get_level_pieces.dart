import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
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
        'assets/images/offline/9eqzg6pi3fyk_cisne01_01.png',
        'assets/images/offline/9cir5w0sfjst_cisne02_01.png',
        'assets/images/offline/xt6wv8l6x9vl_cisne03_01.png',
        'assets/images/offline/cbvcql4agnpn_cisne01_02.png',
        'assets/images/offline/lmtrpqvcvpk9_cisne02_02.png',
        'assets/images/offline/mzgucovinjwk_cisne03_02.png',
        'assets/images/offline/73cxec7dgvsx_cisne01_03.png',
        'assets/images/offline/991lhvp3gku5_cisne02_03.png',
        'assets/images/offline/gaitdcs0152y_cisne03_03.png',
      ];
      list.shuffle();
      return list;
    case 'elefante':
      final list = [
        'assets/images/offline/e8fejt3uwhzr_elefante01_01.png',
        'assets/images/offline/4y14058nv6up_elefante02_01.png',
        'assets/images/offline/et1jdxhh7o9a_elefante03_01.png',
        'assets/images/offline/3d1wmc4fgbqs_elefante01_02.png',
        'assets/images/offline/ps0n53xlxr5b_elefante02_02.png',
        'assets/images/offline/o26udz4w9fdj_elefante03_02.png',
        'assets/images/offline/0z4594wexvos_elefante01_03.png',
        'assets/images/offline/7cm3qqa3wkbn_elefante02_03.png',
        'assets/images/offline/hp51azvgc4xd_elefante03_03.png',
      ];
      list.shuffle();
      return list;
    case 'koala':
      final list = [
        'assets/images/offline/dei9olq4q9dn_koala01_01.png',
        'assets/images/offline/5ztgw84lwlmi_koala02_01.png',
        'assets/images/offline/waxwvvoqv06a_koala03_01.png',
        'assets/images/offline/1fnv64h6cm5v_koala01_02.png',
        'assets/images/offline/chraeivofz8f_koala02_02.png',
        'assets/images/offline/vuarqggz6r40_koala03_02.png',
        'assets/images/offline/efv2sc79vglr_koala01_03.png',
        'assets/images/offline/u70unasm89ti_koala02_03.png',
        'assets/images/offline/vuxaavfsn4u8_koala03_03.png',
      ];
      list.shuffle();
      return list;
    case 'leon':
      final list = [
        'assets/images/offline/p0fowi0imnqm_leon01_01.png',
        'assets/images/offline/0lheig5q43xh_leon02_01.png',
        'assets/images/offline/en4l2eyir7j6_leon03_01.png',
        'assets/images/offline/huho9m7srgmd_leon01_02.png',
        'assets/images/offline/4nl1b6kfoj0n_leon02_02.png',
        'assets/images/offline/s3x8bah9kemr_leon03_02.png',
        'assets/images/offline/ojyh4jovi6tt_leon01_03.png',
        'assets/images/offline/v6g4xm5yi71o_leon02_03.png',
        'assets/images/offline/675kktiyblln_leon03_03.png',
      ];
      list.shuffle();
      return list;
    case 'mono':
      final list = [
        'assets/images/offline/fy1engskla4v_puzzle01_01.png',
        'assets/images/offline/7263x92j3vic_puzzle02_01.png',
        'assets/images/offline/j41ltlqeiko0_puzzle03_01.png',
        'assets/images/offline/7pwrgy1u4llx_puzzle01_02.png',
        'assets/images/offline/ofwrg95v3o8s_puzzle02_02.png',
        'assets/images/offline/wuxc48ix90uz_puzzle03_02.png',
        'assets/images/offline/o8cpmnrrr7e1_puzzle01_03.png',
        'assets/images/offline/oviz6gv94ene_puzzle02_03.png',
        'assets/images/offline/cd6uubq6fmtn_puzzle03_03.png',
      ];
      list.shuffle();
      return list;
    case 'oso':
      final list = [
        'assets/images/offline/hiurgkh0wons_oso01_01.png',
        'assets/images/offline/gdea414olmu5_oso02_01.png',
        'assets/images/offline/32ypurydmb4r_oso03_01.png',
        'assets/images/offline/34aimy929d3x_oso01_02.png',
        'assets/images/offline/nzaacmocqsjk_oso02_02.png',
        'assets/images/offline/ds9z7c5sj383_oso03_02.png',
        'assets/images/offline/qluldsb499rh_oso01_03.png',
        'assets/images/offline/rqmr8nvixbmi_oso02_03.png',
        'assets/images/offline/d2237ikejmmw_oso03_03.png',
      ];
      list.shuffle();
      return list;
    case 'pony':
      final list = [
        'assets/images/offline/zlxdusqa94s0_pony01_01.png',
        'assets/images/offline/0xl8imsnyzai_pony02_01.png',
        'assets/images/offline/09ps8cnbtx11_pony03_01.png',
        'assets/images/offline/1d1db8rws4c8_pony01_02.png',
        'assets/images/offline/krgkcu5po3ey_pony02_02.png',
        'assets/images/offline/zjnp71eqjfoy_pony03_02.png',
        'assets/images/offline/8kna7vnlsp1o_pony01_03.png',
        'assets/images/offline/1f6fp3o0v36c_pony02_03.png',
        'assets/images/offline/aulshrbs5vq4_pony03_03.png',
      ];
      list.shuffle();
      return list;
    case 'perdiz':
      final list = [
        'assets/images/offline/po76jwdcq2l2_perdiz01_01.png',
        'assets/images/offline/z31i9yvv26gj_perdiz02_01.png',
        'assets/images/offline/s2v0l8wh34ex_perdiz03_01.png',
        'assets/images/offline/v764bsa8ck0k_perdiz01_02.png',
        'assets/images/offline/qkpa3ux5ur59_perdiz02_02.png',
        'assets/images/offline/2n44r7q0vs1x_perdiz03_02.png',
        'assets/images/offline/am54ef8ssyd5_perdiz01_03.png',
        'assets/images/offline/hpqhlb3t3air_perdiz02_03.png',
        'assets/images/offline/ix1w234he025_perdiz03_03.png',
      ];
      list.shuffle();
      return list;
    case 'pulpo':
      final list = [
        'assets/images/offline/906c1pn613mz_pulpo01_01.png',
        'assets/images/offline/gra8iauvanwl_pulpo02_01.png',
        'assets/images/offline/7e0u3rancyhv_pulpo03_01.png',
        'assets/images/offline/h88t7tjopvfy_pulpo01_02.png',
        'assets/images/offline/6sb9tkicjnud_pulpo02_02.png',
        'assets/images/offline/eg2u70xn94jl_pulpo03_02.png',
        'assets/images/offline/u0bdmh0mq744_pulpo01_03.png',
        'assets/images/offline/werrulelqo2i_pulpo02_03.png',
        'assets/images/offline/gepsg4h2af6n_pulpo03_03.png',
      ];
      list.shuffle();
      return list;
    default:
      return [];
  }
}
