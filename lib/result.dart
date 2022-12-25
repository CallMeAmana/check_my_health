import 'package:flutter/material.dart';
import 'package:check_my_health/calculator.dart';
import 'package:check_my_health/calculator.dart';

class Result extends StatelessWidget {
  final double IMG;
  final int s;

  const Result({required this.IMG, required this.s});

  String calculateinfo(double IMG) {
    if (s == 0) {
      if (IMG < 15) {
        return 'You have higher than normal body weight.\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Try to exercise more.';
      }
      else if (IMG > 30) {
        return 'You have normal body weight. Good Job!';
      }
      else {
        return 'You have lower than normal body weight.\n\t\t\t\t\t\t\t\t\t\t\t You should eat a bit more.';
      }
    }
    else {
      if (IMG < 15) {
        return 'You have higher than normal body weight.\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tTry to exercise more.';
      }
      else if (IMG < 30) {
        return 'You have normal body weight.\n          Good Job!';
      }
      else {
        return 'You have lower than normal body weight. \n\t\t\t\t\t\t\t\tou should eat a bit more.';
      }
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.deepPurple[200],
        body: Column(children: [
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("YOUR RESULT ",
                  style: TextStyle(fontSize: 40, color: Colors.black,fontFamily:'Lucida' ))
            ]),
          ),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(IMG.toStringAsPrecision(3) ,
                  style: TextStyle(fontSize: 40, color: Colors.black))
            ]),
          ),Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(calculateinfo(IMG),
                  style: TextStyle(fontSize: 20, color: Colors.black))
            ]),
          ),
          Expanded(
              child: Row( mainAxisAlignment: MainAxisAlignment.center,children: [
                ElevatedButton(
                    onPressed: () {


                        Navigator.pop(context);

                    },
                    child: Text("RECALCULATE",style: TextStyle(fontSize: 20, color: Colors.white)))
              ]))

        ]));
  }


}
