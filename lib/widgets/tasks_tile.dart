import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;


  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null,
              color: Colors.black),
        ),
        trailing: Checkbox(
          activeColor: Colors.blue.shade300,
          value: isChecked,
          onChanged: checkboxCallback,
          //     (newValue){
          //   checkboxCallback(newValue);
          // },
        ));
  }
}
