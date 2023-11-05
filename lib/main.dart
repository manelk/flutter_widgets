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

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    /// Scaffold; high-level structure for a screen
    /// Provides AppBar and body property as used in this code
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      /// body: the primary content of the scaffold, here we used a container widget
      body: Container(
        /// The constraints are set to fit the font size plus ample headroom vertically,
        /// while expanding horizontally to fit the parent.
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0,
        ),
        /// The padding is used to make sure there is space between the contents and the text.
        padding: const EdgeInsets.all(8.0),
        /// color: background color of the child => makes the box purple.
        color: Colors.purple[600],
        /// The alignment causes the child to be centered in the box.
        alignment: Alignment.center,
        /// The transform applies a slight rotation to the entire contraption to complete the effect.
        transform: Matrix4.rotationZ(0.5),
        /// the child contained by the container we see here we have one widget.
        child: Text('Hello World',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.white)),
      ),
    );
  }
}
