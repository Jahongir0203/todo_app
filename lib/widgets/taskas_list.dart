import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/moduls/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.task[index];
          return InkWell(
            onLongPress: () {
              context.read<TaskData>().deleteItem(index);
            },
            child: TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkBoxState) {
                  taskData.upDateTask(task);
                }),
          );
        },
        itemCount: Provider.of<TaskData>(context).taskCount(),
      );
    });
  }
}
