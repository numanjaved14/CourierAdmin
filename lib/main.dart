import 'package:courier_admin/views/screens/log_in.dart';
import 'package:courier_admin/views/screens/side_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyA1rbUyo6_5l5lbW3SKa28Ao5tiI3PO7F0',
          measurementId: "G-C83HCM80X1",
          appId: '1:153732324019:web:477284ad9175814eb7eec6',
          messagingSenderId: '153732324019',
          authDomain: 'return-post.firebaseapp.com',
          projectId: 'return-post',
          storageBucket: 'return-post.appspot.com'),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LogIn(),
    );
  }
}
