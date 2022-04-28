import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mino1/shared/todocubit/Cubit.dart';
Widget defaultbutton(
{
  Color backcolor = Colors.brown,
  double width = double.infinity,
  bool isUpper = true,
  double radius = 20,
  required Function() function,
  required String text,

}

    ){
  return Container(

    width:width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: backcolor,
    ),
    child: MaterialButton(
      onPressed: function,
      child: Text(
       isUpper ? text.toUpperCase() : text,
        style: TextStyle(
            color: Colors.brown[100]
        ),
      ),

    ),
  );
}

Widget MinoTextForm(
{
  required TextEditingController controller,
  Color color = Colors.brown,
  required String lbl,
  required IconData pre,
  required TextInputType keyboard,
  bool isPassword = false,

  Function? submitted,
  required String? Function(String?) validate1,
  IconData? suffix,
  Function()? suffix_change,
  Function()? onTap,

}
    ){
  return TextFormField(
    controller: controller,
    validator: validate1
   ,
    onTap: onTap,
    decoration: InputDecoration(
        labelText: lbl,
        labelStyle: TextStyle(color: Colors.brown[300]),
        border: OutlineInputBorder(),
        fillColor: color,
        focusColor: color,
        hoverColor: color,

        prefixIcon: Icon(
          pre,
          color: color,
        ),
        suffixIcon:suffix != null ? IconButton(
          icon: Icon(
            suffix,
            color: color,
          ) ,
          onPressed: suffix_change,
        ): null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color, width: 1),
            borderRadius: BorderRadius.circular(20)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: 2),
            borderRadius: BorderRadius.circular(40))),
     // onFieldSubmitted: submitted,
    // onChanged: (val){print(val);},
    cursorColor: color,
    keyboardType: keyboard,
    obscureText: isPassword,
    style: TextStyle(
      color: Colors.brown[700]
    ),
  );
}

Widget taskItem( Map Model ,context
){
  return Dismissible(
    key: Key(Model['id'].toString()),
    onDismissed: (direction){
      ToDoCubit.get(context).deleteDataBase(id: Model['id']);
    },
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 45,
            child: Text(
              '${Model['time']}',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                color: Colors.brown[600]
              ),
            ),
            backgroundColor: Colors.brown[100],
            foregroundColor: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${Model['title']}",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[800]
                  ),

                ),
                Text(
                  "${Model['date']}",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey
                  ),

                ),
              ],
            ),
          ),
          IconButton(
              onPressed: (){
                ToDoCubit.get(context).update(status: 'done', id: Model['id']);
              },
              icon: Icon(Icons.check,color: Colors.brown,size: 35,)),
          IconButton(
              onPressed: (){
                ToDoCubit.get(context).update(status: 'archive', id: Model['id']);
              },
              icon: Icon(Icons.archive_outlined,color: Colors.brown[300],size: 20,))
        ],
      ),
    ),
  );
}