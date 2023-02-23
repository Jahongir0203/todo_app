import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/moduls/task_data.dart';
import 'package:todo_app/moduls/task.dart';

class AddTasksScreen extends StatelessWidget {
  final TextEditingController textEditingController;
  final Function add;

  AddTasksScreen(this.textEditingController, this.add);

  String newTaskTitle = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            TextField(
              controller: textEditingController,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                print(newText);
                print("newText");
                newTaskTitle = newText;
                print(newTaskTitle);
                print('Jahongir');
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent, // Text Color
              ),
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                add(textEditingController.text);
              },
              onLongPress: (){

              },
            )
          ],
          ),
      ),
    );
  }
}
