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
            apiKey: 'AIzaSyBwHhQej-ethg6QQ6-kZMqfys-bqMrwFqI',
            measurementId: "G-QQEJL2CS27",
            appId: '1:880484343094:web:1a203ee79f747d95ace797',
            messagingSenderId: '880484343094',
            authDomain: 'returnpost-f66e7.firebaseapp.com',
            projectId: 'returnpost-f66e7',
            storageBucket: 'returnpost-f66e7.appspot.com'));
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
