import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:courier_admin/models/update_user_model.dart' as model;

class DataBaseMethods {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future loginUser(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<String> resetPawwordUser({String? email}) async {
    String res = "email sent";

    try {
      _firebaseAuth.sendPasswordResetEmail(email: email!);
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  singnOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String> approveUser({
    required String uid,
    String res = "Some Error Occured",
  }) async {
    if (uid.isNotEmpty) {
      try {
        model.UpdateCheckModel user = model.UpdateCheckModel(
          isApproved: true,
          isDeclined: false,
        );
        await _firestore.collection('users').doc(uid).update(
              user.toJSon(),
            );
        return res = 'Success';
      } catch (e) {
        print(e.toString());
      }
    }
    return res;
  }

  Future<String> declineUser({
    required String uid,
    String res = "Some Error Occured",
  }) async {
    if (uid.isNotEmpty) {
      try {
        model.UpdateCheckModel user = model.UpdateCheckModel(
          isApproved: false,
          isDeclined: true,
        );
        await _firestore.collection('users').doc(uid).update(
              user.toJSon(),
            );
        return res = 'Success';
      } catch (e) {
        print(e.toString());
      }
    }
    return res;
  }

  Future<String> addBrand({
    required String brandName,
    String res = "Some Error Occured",
  }) async {
    var id = Uuid().v1();
    if (brandName.isNotEmpty) {
      try {
        await _firestore.collection('brands').doc(id).set(
          {
            'brandName': brandName,
          },
        );
        return res = 'Success';
      } catch (e) {
        print(e.toString());
      }
    }
    return res;
  }
}
