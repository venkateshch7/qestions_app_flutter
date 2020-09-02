import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPharse {
    String resulttext;
    if(resultScore <=8){
      resulttext = "You are awesome and  innocent";
    } else if (resultScore <=12){
      resulttext = "Pretty likable";
    } else if (resultScore <=16){
      resulttext = "you are bad";
    } else {
      resulttext = "you are baddsadsad";
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPharse,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}