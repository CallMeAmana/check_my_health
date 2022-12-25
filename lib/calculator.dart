import 'package:flutter/material.dart';
import 'result.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int height = 150;
  int weight = 50;
  int age = 18;
  String sexe = "male";
  Color cardColorf = Colors.white;
  Color cardColorm = Colors.white;
  double IMG = 12.0;
  double calcul()    {
    double img=0;
    img=(1.2*weight/((height/100)*(height/100)))+(0.23*age)-(10.83*s)-5.4;
    return img;
  }

  int s = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:  Text("Check my health",style: TextStyle(fontSize: 25, color: Colors.white),textAlign:TextAlign.center)),
        body: Column(children: [
          Expanded(
              child: Row(children: [
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  sexe = "female";
                  cardColorf = Colors.pinkAccent;
                  cardColorm = Colors.white;

                });
              },
              child: Card( color: cardColorf,
                  child: Column(children: const [
                Icon(
                  Icons.female,
                  size: 80,
                ),
                SizedBox(height: 20),
                Text("Female",
                    style: TextStyle(fontSize: 20, color: Colors.black))
              ])),
            )),
            Expanded(
                child: InkWell(
                    onTap: () {
                      setState(() {
                        sexe = "male";
                       cardColorm = Colors.blue;
                        cardColorf = Colors.white;
                      });
                    },
                    child: Card(color: cardColorm,
                        child: Column(children: const [
                      Icon(
                        Icons.male,
                        size: 80,
                      ),
                      SizedBox(height: 20),
                      Text("Male",
                          style: TextStyle(fontSize: 20, color: Colors.black))
                    ]))))
          ])),
          Expanded(
              child: Row(children: [
            Expanded(
              child: Card(
                child: Column(children: [
                  Expanded(
                      child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Height',
                            style:
                                TextStyle(fontSize: 25, color: Colors.black)),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              height.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              'cm',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              thumbColor: Colors.deepPurple,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 10.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 20.0),
                              activeTrackColor: Colors.deepPurpleAccent),
                          child: Slider(
                            min: 100,
                            value: height.toDouble(),
                            max: 200,
                            onChanged: (double value) {
                              setState(() {
                                height = value.toInt();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  )),
                ]),
              ),
            )
          ])),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Card(
                      child: Column(
                children: [SizedBox(height: 30),
                  const Text("WEIGHT",
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                          icon: Icon(Icons.remove_circle),color:Colors.deepPurpleAccent),
                      Text(weight.toString(),
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          icon: const Icon(Icons.add_circle),color:Colors.deepPurpleAccent)
                    ],
                  )
                ],
              ))),
              Expanded(
                  child: Card(
                      child: Column(
                children: [SizedBox(height: 30),
                  Text("AGE",
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                          icon: Icon(Icons.remove_circle),color:Colors.deepPurpleAccent),
                      Text(age.toString(),
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                          icon: Icon(Icons.add_circle),color:Colors.deepPurpleAccent)
                    ],
                  )
                ],
              ))),

            ],
          )),
        Expanded(
    child: Row( mainAxisAlignment: MainAxisAlignment.center,children: [
    ElevatedButton(
    onPressed: () {
    setState(() {
      IMG=calcul();

    Navigator.push(
    context,
    MaterialPageRoute(builder: (builder) => Result(IMG:IMG,s:s)));
    });
    },
    child: Text("CALCULATE",style: TextStyle(fontSize: 20, color: Colors.white)))
    ]))]));
  }
}
