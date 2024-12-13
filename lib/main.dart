import 'package:advent_of_code_2024/input.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advent of code',
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
  Input input = Input(
    leftList: [],
    rightList: [],
    totalDistance: 0,
    similarityScore: 0,
  );

  @override
  void initState() {
    super.initState();
    input.sort();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                input.calculateTotalDistance();
              });
            },
            child: Text('calculate'),
          ),
          Text('Total distance : ${input.totalDistance}'),
          Text('Similarity Score : ${input.similarityScore}'),
        ],
      ),
    );
  }
}
