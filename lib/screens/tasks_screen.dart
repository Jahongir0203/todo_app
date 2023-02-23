import 'package:flutter/material.dart';
import 'package:todo_app/widgets/taskas_list.dart';
import "add_tasks_screen.dart";
import 'package:provider/provider.dart';
import 'package:todo_app/moduls/task_data.dart';

class TasksScreen extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTasksScreen(
                  textEditingController,
                  (String newTaskTitle) {
                    Provider.of<TaskData>(context, listen: false)
                        .addTaskTitle(newTaskTitle);
                    print(newTaskTitle);
                    Navigator.pop(context);
                  },

                ),
              ),
            ),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 30.0,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount()} tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
