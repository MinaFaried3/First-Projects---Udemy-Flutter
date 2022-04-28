import 'package:conditional_builder_rec/conditional_builder_rec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mino1/shared/components/components.dart';

import 'package:mino1/shared/components/constans.dart';
import 'package:mino1/shared/todocubit/Cubit.dart';
import 'package:mino1/shared/todocubit/states.dart';

class Tasks extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {


    return BlocConsumer<ToDoCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        var task = ToDoCubit.get(context).task;
        return ConditionalBuilderRec(
            condition: task.length >0,
            builder: (context)=> ListView.separated(
                itemBuilder: (context, index) {
                  return taskItem(task[index],context);
                },
                separatorBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    width: double.infinity,
                    height: 2,
                    decoration: BoxDecoration(
                        color: Colors.brown[100],
                        borderRadius: BorderRadius.circular(80)),
                  );
                },
                itemCount: task.length),
            fallback: (context) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_comment_rounded,size: 90,color: Colors.brown[100],),
                  SizedBox(
                    height: 10,
                  ),
                  Text("No Tasks Yet, Please Add Some Tasks",
                  style: TextStyle(
                    color: Colors.brown[300],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                  ),
                  ),
                ],
              ),
            ),
        );
      },

    );
  }
}


