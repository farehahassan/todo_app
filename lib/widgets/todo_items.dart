import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todo_list/constants/colors.dart';
import 'package:todo_list/models/todo.dart';

class TodoItems extends StatelessWidget {
  TodoItems({super.key, required this.todo});
  final ToDo todo;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        leading: Icon(
          Icons.check_box,
          color: pink,
        ),
        title: Text(
          "Check Mall",
          style: TextStyle(
              fontSize: 16,
              color: purple,
              decoration: TextDecoration.lineThrough),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: lightPurple,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.white,
                size: 18,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
