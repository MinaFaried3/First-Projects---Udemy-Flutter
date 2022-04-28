import 'package:flutter/material.dart';
import 'package:mino1/models/user/user.dart';

class ModelView extends StatelessWidget {


  List<Model> user = [
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),
    Model(
      id: 1,
      name: "mino",
      num: 01207340018,
    ),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view Model"),
      ),
      body: ListView.separated(
          itemBuilder: (context , index) => Item_Bulder(user[index]),
          separatorBuilder: (context , index) => Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 2,
              color: Colors.grey,
            ),
          ),
          itemCount: user.length),
    );
  }
  Widget Item_Bulder(Model user) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.greenAccent,
          child: Text(
            '${user.id}',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
            )
            ,

          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${user.name}",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),

            ),
            Text(
              "${user.num}",
              style: TextStyle(
                  color: Colors.grey
              ),
            )
          ],
        )
      ],
    ),
  );
}
