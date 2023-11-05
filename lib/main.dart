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
      /// This example uses a Column to arrange three widgets vertically ⬇,
      body: const Column(
        children: <Widget>[
          Text('Deliver features faster'),
          Text('Craft beautiful UIs'),

          /// 1. See this error together: Vertical viewport was given unbounded height.
          /// Uncomment the ListView
          // ListView(
          //   padding: const EdgeInsets.all(8),
          //   children: <Widget>[
          //     Container(
          //       height: 50,
          //       color: Colors.amber[600],
          //       child: const Center(child: Text('Entry A')),
          //     ),
          //     Container(
          //       height: 50,
          //       color: Colors.amber[500],
          //       child: const Center(child: Text('Entry B')),
          //     ),
          //     Container(
          //       height: 50,
          //       color: Colors.amber[100],
          //       child: const Center(child: Text('Entry C')),
          //     ),
          //   ],
          // ),

          /// 2. Solve it using expanded
          // Expanded(
          //   child: ListView(
          //     padding: const EdgeInsets.all(8),
          //     children: <Widget>[
          //       Container(
          //         height: 100,
          //         color: Colors.amber[600],
          //         child: const Center(child: Text('Entry A')),
          //       ),
          //       Container(
          //         height: 100,
          //         color: Colors.amber[500],
          //         child: const Center(child: Text('Entry B')),
          //       ),
          //       Container(
          //         height: 100,
          //         color: Colors.amber[100],
          //         child: const Center(child: Text('Entry C')),
          //       ),
          //       Container(
          //         height: 100,
          //         color: Colors.amber[100],
          //         child: const Center(child: Text('Entry C')),
          //       ),
          //       Container(
          //         height: 100,
          //         color: Colors.amber[100],
          //         child: const Center(child: Text('Entry C')),
          //       ),
          //       Container(
          //         height: 100,
          //         color: Colors.amber[100],
          //         child: const Center(child: Text('Entry C')),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
