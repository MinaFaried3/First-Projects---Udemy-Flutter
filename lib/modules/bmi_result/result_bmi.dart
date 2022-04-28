import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  Color theme = Color.fromRGBO(10, 14, 33, 1);
  Color theme1 = Color.fromRGBO(17, 19, 40, 1);
  Color theme2 = Color.fromRGBO(29, 30, 51, 1);
  Color theme3 = Color.fromRGBO(65, 100, 130, 0.788235294117647);
  Color theme4 = Color.fromRGBO(231, 172, 216, 0.7058823529411765);
  Color borderf = Color.fromRGBO(246, 117, 138, 1);
  Color borderm = Color.fromRGBO(80, 165, 220, 1);
  final bool isMale;
  final int age;
  final double result;

  Result(
   {
     required this.age,
     required this.isMale,
     required this.result,

}
      ){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme,
        elevation: 0,
        title: Text("BMI RSULT",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Container(
        color: theme,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "GENDER : ${isMale ? "MALE" : "FEMALE" } ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 7
              ),
            ),
            Text(
              "AGE : $age",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 10
              ),
            ),
            Text(
              "BMI RESULT: ${result.round()} ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 10
              ),
            ),
          ],
        ),
      ),
    );
  }
}
