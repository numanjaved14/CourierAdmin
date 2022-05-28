import 'dart:isolate';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/rendering.dart';

class UserModel {
  final String? uid;

  final bool? isApproved;

  UserModel({
    required this.uid,
    required this.isApproved,
  });

  Map<String, dynamic> toJSon() => {
        'id': uid,
        'isApproved': isApproved,
      };
}
