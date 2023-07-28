import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/models/task_model.dart';
import 'package:task_manager/views/details.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    final taskList = TaskModel.generateTask();
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        child: GridView.builder(
            itemCount: taskList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (context, index) => taskList[index].islast
                ? _buildaddTask()
                : _buildtask(context, taskList[index])),
      ),
    );
  }
}

Widget _buildaddTask() {
  return _rectBorderWidget;
}

Widget get _rectBorderWidget {
  return DottedBorder(
    dashPattern: [10, 10],
    strokeWidth: 1,
    child: const Center(
        child: Text(
      '+ Add Task',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    )),
  );
}

Widget _buildtask(BuildContext context, TaskModel taskModel) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => DetailsTask(taskModel)));
    },
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: taskModel.bgcolor, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            taskModel.icondata,
            color: taskModel.iconcolor,
            size: 35,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            taskModel.title!,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              _buildTaskStatus(taskModel.iconcolor!, taskModel.btncolor!,
                  '${taskModel.left} left'),
              const SizedBox(
                width: 15,
              ),
              _buildTaskStatus(
                  Colors.white, taskModel.iconcolor!, '${taskModel.done} Done')
            ],
          )
        ],
      ),
    ),
  );
}

Widget _buildTaskStatus(Color bgColor, Color txColor, String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      text,
      style: TextStyle(color: txColor),
    ),
  );
}
