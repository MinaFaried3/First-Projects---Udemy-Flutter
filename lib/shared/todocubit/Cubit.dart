import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mino1/modules/login/archived.dart';
import 'package:mino1/modules/login/done.dart';
import 'package:mino1/modules/login/tasks.dart';
import 'package:mino1/shared/todocubit/states.dart';
import 'package:sqflite/sqflite.dart';

class ToDoCubit extends Cubit<AppStates> {
  ToDoCubit() : super(InitState());
  static ToDoCubit get(context) {
    return BlocProvider.of(context);
  }

  int currentIndex = 0;

  List<Widget> NavItem = [Tasks(), Done(), Archived()];
  List<String> TitleItem = ["Tasks", " Done", "Archived"];
  late Database database;
  List<Map> task = [];
  List<Map> done_task = [];
  List<Map> archived_task = [];
  bool isShowBottom = false;
  IconData fab = Icons.edit;

  void change(int index) {
    currentIndex = index;
    emit(ChangeBottomNavItem());
  }

  void createDateBase() {
    openDatabase('database.db', version: 1, onCreate: (database, version) {
      database
          .execute(
              'CREATE TABLE tasks (id INTEGER PRIMARY KEY,title TEXT, date TEXT, time TEXT, status TEXT)')
          .then((value) {
        print("table is created");
      }).catchError((err) {
        print("error in creating datebase");
      });
      print("datebase is created");
    }, onOpen: (database) {
      getData(database);
      print("database is opened");
    }).then((value) {
      database = value;
      emit(CreateDatabaseState());
    });
  }

  insertToDataBase({
    required String time,
    required String title,
    required String date,
  }) async {
    await database.transaction((txn) async {
      int id1 = await txn.rawInsert(
          'INSERT INTO tasks(title, date, time, status) VALUES ("$title","$date","$time","new")');
      print('inserted1: $id1');
      emit(InsertDatabaseState());
      getData(database);
    });
  }

  void getData(database)  {
    task =[];
    done_task=[];
    archived_task=[];
    emit(LoadingIcon());
     database.rawQuery('SELECT * FROM tasks').then((value)
     {

     value.forEach((element) {
         if(element['status'] == 'new'){
           task.add(element);
         }else if (element['status'] == 'done'){
           done_task.add(element);
         }else{
           archived_task.add(element);
         }
       });
       emit(GetDatabaseState());
     });
  }

  void update({required String status, required int id}) async {
    database.rawUpdate('UPDATE tasks SET status = ? WHERE id = ?',
        ['$status', id]).then((value) {
          print('update : $value');
          getData(database);
          emit(UpdateDatabaseState());
    });
  }
  void deleteDataBase({ required int id}) async {
    database.rawDelete('DELETE FROM tasks WHERE id = ?', [id]).then((value) {
      print('update : $value');
      getData(database);
      emit(DeleteDatabaseState());
    });
  }

  void changeFloatIcon({required IconData icon, required bool isSheet}) {
    fab = icon;
    isShowBottom = isSheet;
    emit(ChangeFloatingItem());
  }
}
