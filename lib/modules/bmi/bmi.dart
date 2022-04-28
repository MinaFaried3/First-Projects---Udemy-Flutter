

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mino1/modules/bmi_result/result_bmi.dart';
class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);


  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  Color theme = Color.fromRGBO(10, 14, 33, 1);
  Color theme1 = Color.fromRGBO(17, 19, 40, 1);
  Color theme2 = Color.fromRGBO(29, 30, 51, 1);
  Color theme3 = Color.fromRGBO(65, 100, 130, 0.788235294117647);
  Color theme4 = Color.fromRGBO(231, 172, 216, 0.7058823529411765);
  Color borderf = Color.fromRGBO(246, 117, 138, 1);
  Color borderm = Color.fromRGBO(80, 165, 220, 1);

  double height = 180;

  bool isMale = true;
  int age = 20;
  int weight = 80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "BMI CAlCULATOR ",

        ),
        elevation: 0,
        backgroundColor: theme,
        centerTitle: true,
      ),
      body: Container(
        color: theme,
        child: Column(
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                   children: [
                     Expanded(
                       child: GestureDetector(
                         onTap: (){
                           setState(() {
                             isMale = true;
                           });
                         },
                         child: Container(

                           decoration: BoxDecoration(
                             color: isMale ? theme2 : theme1,
                             borderRadius: BorderRadius.circular(20),
                               border:   Border.all(color: isMale ? borderm: theme1)

                           ),

                           child: Column(

                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Image(
                                 image: AssetImage('img/male.png'),
                                 width: 100,
                                 height: 100,
                               ),
                               SizedBox(
                                 height: 30,
                               ),
                               Text(
                                 'MALE',
                                 style: TextStyle(
                                   color: Colors.white54,
                                   fontSize: 20,
                                   // fontWeight: FontWeight.bold
                                 ),
                               )
                             ],
                           ),
                         ),
                       ),
                     ) ,
                     SizedBox(
                       width: 10,
                     ),
                     Expanded(
                       child: GestureDetector(
                         onTap: (){
                          setState(() {
                            isMale= false;
                          });
                         },
                         child: Container(

                           decoration: BoxDecoration(
                             color: !isMale ? theme2 : theme1,
                             borderRadius: BorderRadius.circular(20),
                             border:   Border.all(color: !isMale ? borderf: theme1)

                           ),

                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Image(
                                 image: AssetImage('img/female.png'),
                                 width: 100,
                                 height: 100,
                               ),
                               SizedBox(
                                 height: 30,
                               ),
                               Text(
                                 'FEMALE',
                                 style: TextStyle(
                                   color: Colors.white54,
                                   fontSize: 20,
                                   // fontWeight: FontWeight.bold
                                 ),
                               )
                             ],
                           ),
                         ),
                       ),
                     ),

                   ],
                  ),
                )),
            Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 15),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: theme2,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 25
                        ),

                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "CM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),

                      Slider(
                          value: height,
                          max: 220,
                          min: 10,
                          activeColor: Colors.pinkAccent,
                          thumbColor: Colors.pink,

                          onChanged: (value){
                              setState(() {
                                 height = value;
                              });
                      }),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                )
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: theme2,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                '$weight',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    mini: true,
                                    child: Icon(Icons.remove),

                                    backgroundColor: theme4,
                                    foregroundColor: Colors.pink,
                                    heroTag: "weight1",
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                        setState(() {
                                          weight++;
                                        });
                                    },
                                    mini: true,
                                    child: Icon(Icons.add),

                                    backgroundColor: theme3,
                                    foregroundColor: Colors.blue[200],
                                    heroTag: "weight2",
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: theme2,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                '$age',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                        setState(() {
                                          age--;
                                        });
                                    },
                                    mini: true,
                                    child: Icon(Icons.remove),

                                    backgroundColor: theme4,
                                    foregroundColor: Colors.pink,
                                    heroTag: "age1",
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    onPressed: (){

                                      setState(() {
                                        age++;
                                      });
                                    },
                                    mini: true,
                                    child: Icon(Icons.add),

                                    backgroundColor: theme3,
                                    foregroundColor: Colors.blue[200],
                                    heroTag: "age2",
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                )
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                  topLeft:  Radius.circular(40.0) ,
                  topRight:  Radius.circular(40.0)
                )
              ),
              child: MaterialButton(

                onPressed: (){
                  double result = weight / pow(height/100, 2);
                  print(result.round());

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return Result(
                          isMale: isMale,
                          age: age,
                          result: result,
                        );
                      }
                    )
                  );
                },
                child: Column(
                  children: [
                    Text(
                      "CALCULATE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      width: 50,
                      height: 3,
                      color: theme,
                    )
                  ],
                ),

                  ),
            )
          ],
        ),
      ),
    );
  }
}
