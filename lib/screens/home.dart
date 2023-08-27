import 'package:flutter/material.dart';
import 'package:todo_list/constants/colors.dart';
import 'package:todo_list/models/todo.dart';
import 'package:todo_list/widgets/search_box.dart';
import 'package:todo_list/widgets/todo_items.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final todoList = ToDo.todoList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightCyan,
      appBar: AppBar(
        backgroundColor: lightCyan,
        leading: Icon(
          Icons.menu,
          color: purple,
          size: 30,
        ),
        title: Text(
          "TO-DO list",
          style: TextStyle(
              color: purple, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            SearchBox(),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      "Your ToDos",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (ToDo todoo in todoList)
                    TodoItems(
                      todo: todoo,
                    ),
                  // TodoItems(),
                  // TodoItems(),
                  // TodoItems(),
                  // TodoItems(),
                  // TodoItems(),
                  // TodoItems(),
                  // TodoItems(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
