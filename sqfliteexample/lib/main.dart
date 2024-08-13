import 'package:flutter/material.dart';
import 'package:sqfliteexample/view/home_screen.dart';

import 'controller/Home_screen_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Main.dart il runApp() ozhike enthenkilum kodukunudenkil ethe kodukanam. Widget tree build cheythathine shesham mathram baki ulla function nadakkan vendi
  await HomeScreenController.initDB(); // App open aavumbol thanne initialize cheyum.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sqflite Demo',
      home: HomeScreen(),
    );
  }
}

