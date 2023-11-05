/// SafeArea demo follow the todo and see before and after!
/// Link: https://www.educative.io/answers/how-to-use-safearea-widget-in-flutter

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/// TODO : WRAP TEXT WITH SafeArea WIDGET AND SEE THE CHANGES!
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        'Welcome to Educative.io! We hope you are enjoying your time exploring answers and learning with us.',
        style: TextStyle(fontSize: 22),
      ),
    );
  }
}
