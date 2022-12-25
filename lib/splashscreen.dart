import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'calculator.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5 ,
      navigateAfterSeconds: new Calculator() ,
      title: new Text(' Check my health ',style: TextStyle(fontSize: 30, color: Colors.black)),
      image:new Image.asset('images/logo.png'),
      backgroundColor: Colors.deepPurple[50],
      loadingText: Text('LOADING',style: TextStyle(fontSize: 20, color: Colors.black)),
      photoSize:100 ,
      loaderColor: Colors.black ,
    );
  }
}
