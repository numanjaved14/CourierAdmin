import 'dart:isolate';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/rendering.dart';

class UpdateCheckModel {
  final bool? isApproved;
  final bool? isDeclined;

  UpdateCheckModel({
    required this.isApproved,
    required this.isDeclined,
  });

  Map<String, dynamic> toJSon() => {
        'isDeclined': isDeclined,
        'isApproved': isApproved,
      };
}
