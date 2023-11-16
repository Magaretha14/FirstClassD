import 'package:first_class_d/score_board.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  get scoreA => 1;

  get scoreB => 1;

  get scoreC => 1;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scoreA = 0;
  var scoreB = 0;
  var scoreC = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text("Score Board"),
      )),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(children: [
          ScoreBoard(
            scoreA: scoreA,
            warna: Colors.yellow,
            judul: "Team A",
            min: () {
              setState(() {
                if (scoreA > 0) {
                  scoreA--;
                }
              });
            },
            reset: () {
              setState(() {
                if (scoreA > 0) {
                  scoreA = 0;
                }
              });
            },
            plus: () {
              setState(() {
                scoreA++;
              });
            },
          ),
          ScoreBoard(
            scoreA: scoreB,
            warna: Colors.green,
            judul: "Team B",
            min: () {
              setState(() {
                if (scoreB > 0) {
                  scoreB--;
                }
              });
            },
            reset: () {
              setState(() {
                if (scoreB > 0) {
                  scoreB = 0;
                }
              });
            },
            plus: () {
              setState(() {
                scoreB++;
              });
            },
          ),
          ScoreBoard(
            scoreA: scoreC,
            warna: Colors.blue,
            judul: "Team C",
            min: () {
              setState(() {
                if (scoreC > 0) {
                  scoreC--;
                }
              });
            },
            reset: () {
              setState(() {
                if (scoreC > 0) {
                  scoreC = 0;
                }
              });
            },
            plus: () {
              setState(() {
                scoreC++;
              });
            },
          )
        ]),
      ),
    );
  }
}
