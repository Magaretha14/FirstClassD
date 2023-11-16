import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({
    Key? key,
    required this.scoreA,
    required this.warna,
    required this.judul,
    required this.min,
    required this.plus,
    required this.reset,
  }) : super(key: key);

  final int scoreA;
  final Color warna;
  final String judul;
  final VoidCallback min;
  final VoidCallback reset;
  final VoidCallback plus;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          AppBar(
            backgroundColor: warna,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
            title: Center(
              child: Text(
                judul,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 45,
            ),
            child: Title(
              color: Colors.black,
              child: Text(
                "$scoreA",
                style: const TextStyle(fontSize: 50),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: min, child: const Icon(Icons.arrow_circle_down)),
              ElevatedButton(
                onPressed: reset,
                child: const Icon(Icons.cancel_rounded),
              ),
              ElevatedButton(
                onPressed: plus,
                child: const Icon(Icons.arrow_circle_up),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
