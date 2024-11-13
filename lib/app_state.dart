import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _username = 'pedro';
  String get username => _username;
  set username(String value) {
    _username = value;
  }

  String _emailUser = 'pedro.luiz@gouro.com.br';
  String get emailUser => _emailUser;
  set emailUser(String value) {
    _emailUser = value;
  }

  String _userPicture =
      'https://miro.medium.com/v2/resize:fit:1400/1*g09N-jl7JtVjVZGcd-vL2g.jpeg';
  String get userPicture => _userPicture;
  set userPicture(String value) {
    _userPicture = value;
  }

  List<dynamic> _tasks = [];
  List<dynamic> get tasks => _tasks;
  set tasks(List<dynamic> value) {
    _tasks = value;
  }

  void addToTasks(dynamic value) {
    tasks.add(value);
  }

  void removeFromTasks(dynamic value) {
    tasks.remove(value);
  }

  void removeAtIndexFromTasks(int index) {
    tasks.removeAt(index);
  }

  void updateTasksAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    tasks[index] = updateFn(_tasks[index]);
  }

  void insertAtIndexInTasks(int index, dynamic value) {
    tasks.insert(index, value);
  }

  List<dynamic> _lists = [];
  List<dynamic> get lists => _lists;
  set lists(List<dynamic> value) {
    _lists = value;
  }

  void addToLists(dynamic value) {
    lists.add(value);
  }

  void removeFromLists(dynamic value) {
    lists.remove(value);
  }

  void removeAtIndexFromLists(int index) {
    lists.removeAt(index);
  }

  void updateListsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    lists[index] = updateFn(_lists[index]);
  }

  void insertAtIndexInLists(int index, dynamic value) {
    lists.insert(index, value);
  }
}
