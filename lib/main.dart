import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
  var test = TestClass(x: 4, y: 10);
  print(test.x);
  var newTest = test.copyWith(30, 40);
  print(test.y);
}

class TestClass{
  int x;
  int y;

  TestClass({required this.x, required this.y});
  TestClass copyWith(int? x, int? y){
  return TestClass(x:x??this.x, y:y??this.y);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
                                                                                                                                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomNavBar(),
    );
  }
}
