import 'package:flutter/material.dart';
import 'package:netflix/screen/screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
          primaryColor: Colors.black
      ),
      home: const MainScreen(),
    );
  }
}
