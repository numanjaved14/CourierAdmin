import 'dart:isolate';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/rendering.dart';

class DeclineModel {
  final String? uid;

  final bool? isDeclined;

  DeclineModel({
    required this.uid,
    required this.isDeclined,
  });

  Map<String, dynamic> toJSon() => {
        'id': uid,
        'isApproved': isDeclined,
      };
}
