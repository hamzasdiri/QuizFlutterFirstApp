import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String res;
  final int score;
  final VoidCallback reset;

  Result(this.res, this.score, this.reset);
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          margin: EdgeInsets.only(top: 250),
          alignment: Alignment.center,
          child: Text(
            'You Choosed ' + res + '\n And Your Score is = ' + score.toString(),
            style: TextStyle(fontSize: 20, color: Colors.blue),
            textAlign: TextAlign.center,
          )),
      ElevatedButton(
          child: Text('Restart Quiz!'),
          onPressed: reset,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          )),
    ]);
  }
}
