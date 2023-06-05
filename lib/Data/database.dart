import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the first time ever opening this app
  void createInitData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //load the data from datbase
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

// update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
