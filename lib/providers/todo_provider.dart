//NEW FILE

/*
  Created by: Claizel Coubeili Cepe
  Date: updated April 26, 2023
  Description: Sample todo app with Firebase 
*/
import 'package:cloud_firestore/cloud_firestore.dart';
import '../api/firebase_todo_api.dart';

import 'package:flutter/material.dart';
import '../models/todo_model.dart';

class TodoListProvider with ChangeNotifier {
  late FirebaseTodoAPI firebaseService;
  late Stream<QuerySnapshot> _todosStream;

  // List<Todo> _todoList = [
    // Todo(
    //   completed: true,
    //   userId: 1,
    //   title: "Grocery",
    // ),
    // Todo(
    //   completed: true,
    //   userId: 1,
    //   title: "Bills",
    // ),
    // Todo(
    //   completed: false,
    //   userId: 1,
    //   title: "Walk dog",
    // ),
  // ];

  // TodoListProvider(){
  //   firebaseService = FirebaseTodoAPI();
  // }
  // // getter
  // List<Todo> get todo => _todoList;

  TodoListProvider() {
    firebaseService = FirebaseTodoAPI();
    fetchTodos();
  }
  // new getter
  Stream<QuerySnapshot> get todos => _todosStream;

  fetchTodos() {
    _todosStream = firebaseService.getAllTodos();
    notifyListeners();
  }

  // void addTodo(Todo item) {
  //   _todoList.add(item);
  //   notifyListeners();
  // }

  void addTodo(Todo item) async {
    String message = await firebaseService.addTodo(item.toJson(item));
    print(message);
    notifyListeners();
  }

  void editTodo(int index, String newTitle) {
    // _todoList[index].title = newTitle;
    notifyListeners();
  }

  void deleteTodo(String id) async {
    String message = await firebaseService.deleteTodo(id);
    print(message);
    notifyListeners();
  }

  void toggleStatus(int index, bool status) {
    // _todoList[index].completed = status;
    notifyListeners();
  }
}
