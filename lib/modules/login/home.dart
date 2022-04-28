import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mino1/shared/components/components.dart';
import 'package:mino1/shared/todocubit/Cubit.dart';
import 'package:mino1/shared/todocubit/states.dart';

class home extends StatelessWidget {
  GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> FormKey = GlobalKey<FormState>();
  TextEditingController time = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return ToDoCubit()..createDateBase();
      },
      child: BlocConsumer<ToDoCubit, AppStates>(
        listener: (context, state) {
          if (state is InsertDatabaseState) {
            Navigator.pop(context);
          }
        },
        builder: (context, states) {
          ToDoCubit Bloc_Key = BlocProvider.of(context);
          return Scaffold(
            key: ScaffoldKey,
            appBar: AppBar(
              title: Text(
                "${Bloc_Key.TitleItem[Bloc_Key.currentIndex]}",
                style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 5),
              ),
              backgroundColor: Colors.brown,
              centerTitle: true,
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Bloc_Key.fab),
              onPressed: () {
                if (Bloc_Key.isShowBottom) {
                  if (FormKey.currentState!.validate()) {
                    Bloc_Key.insertToDataBase(
                        time: time.text, title: title.text, date: date.text);
                    time.text = '';
                    title.text = '';
                    date.text = '';
                    // insertToDataBase(
                    //     time: time.text, title: title.text, date: date.text)
                    //     .then((val) {
                    //   getData(database).then((value) {
                    //     Navigator.pop(context);
                    //
                    //     // setState(() {
                    //     //   isShowBottom = false;
                    //     //   task = value;
                    //     //   print(task);
                    //     //   fab = Icons.edit;
                    //     // });
                    //   });
                    // });
                  }
                } else {
                  ScaffoldKey.currentState!
                      .showBottomSheet(
                        (context) {
                          return Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(right: 10, left: 10),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.brown[50]),
                            child: Form(
                              key: FormKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: Colors.brown[700],
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  MinoTextForm(
                                      controller: title,
                                      lbl: 'Title',
                                      pre: Icons.title,
                                      keyboard: TextInputType.text,
                                      validate1: (String? val) {
                                        if (val!.isEmpty) {
                                          return 'Please ,Enter your Task Title';
                                        }
                                      }),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  MinoTextForm(
                                      controller: time,
                                      lbl: 'Time',
                                      pre: Icons.watch_later_outlined,
                                      keyboard: TextInputType.none,
                                      validate1: (String? val) {
                                        if (val!.isEmpty) {
                                          return 'Please ,Enter your Task Time';
                                        }
                                      },
                                      onTap: () {
                                        showTimePicker(
                                                context: context,
                                                initialTime: TimeOfDay.now())
                                            .then((value) {
                                          time.text = value!.format(context);
                                        });
                                      }),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  MinoTextForm(
                                      controller: date,
                                      lbl: 'Date',
                                      pre: Icons.date_range_outlined,
                                      keyboard: TextInputType.datetime,
                                      validate1: (String? val) {
                                        if (val!.isEmpty) {
                                          return 'Please ,Enter your Task date';
                                        }
                                      },
                                      onTap: () {
                                        showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime.now(),
                                                lastDate: DateTime.parse(
                                                    '2050-07-29'))
                                            .then((value) {
                                          date.text =
                                              DateFormat.yMMMd().format(value!);
                                        });
                                      }),
                                ],
                              ),
                            ),
                          );
                        },
                        // elevation: 20
                      )
                      .closed
                      .then((value) {
                        Bloc_Key.changeFloatIcon(
                            icon: Icons.edit, isSheet: false);
                      });
                  Bloc_Key.changeFloatIcon(icon: Icons.add, isSheet: true);
                }
              },
              backgroundColor: Colors.brown,
            ),
            body: states is! LoadingIcon
                ? Bloc_Key.NavItem[Bloc_Key.currentIndex]
                : Center(
                    child: CircularProgressIndicator(
                      color: Colors.brown,
                    ),
                  ),
            bottomNavigationBar: Container(
              // padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.brown[700],
                borderRadius: BorderRadius.circular(50),
              ),

              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.brown[200],
                currentIndex: Bloc_Key.currentIndex,
                onTap: (index) {
                  Bloc_Key.change(index);
                },
                type: BottomNavigationBarType.fixed,
                showUnselectedLabels: false,
                elevation: 0,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.menu_open),
                    label: 'Tasks',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.check_circle_outline_rounded),
                      label: 'Done'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.archive_outlined), label: 'Archived'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<String> getName() async {
    return 'Mina is Future';
  }
}
