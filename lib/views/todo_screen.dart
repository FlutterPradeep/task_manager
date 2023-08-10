import 'package:flutter/material.dart';
import 'package:task_manager/widgets/todo_tile.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  // **list of todo task

  List toDoList = ["Make Tutor", false, "Gym", false];

  // **checkbox was tapped
  void checkboxchanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 246, 183),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Center(
          child: Text('TAsk Management'),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return Todotile(
                taskName: toDoList[index][0],
                taskCompleted: toDoList[index][1],
                onchanged: (value) => checkboxchanged(value, index));
          }),
    );
  }
}
