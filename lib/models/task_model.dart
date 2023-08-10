import 'package:flutter/material.dart';

class TaskModel {
  IconData? icondata;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  num? done;
  bool islast;
  List<Map<String, dynamic>>? description;
  TaskModel(
      {this.icondata,
      this.title,
      this.bgcolor,
      this.iconcolor,
      this.btncolor,
      this.done,
      this.left,
      this.description,
      this.islast = false});

  static List<TaskModel> generateTask() {
    return [
      TaskModel(
          icondata: Icons.person_2_rounded,
          title: 'Personal',
          bgcolor: const Color.fromARGB(255, 212, 208, 170),
          iconcolor: Colors.black,
          btncolor: Colors.blue,
          left: 2,
          done: 1,
          description: [
            {
              'time': '9:00 am',
              'title': 'Go For a Walk',
              'slot': '9:00 - 10:00 am',
              'tlColors': const Color.fromARGB(255, 177, 82, 74),
              'bgColors': const Color.fromARGB(255, 235, 193, 190),
            },
            {
              'time': '10:00 am',
              'title': 'Drink Water',
              'slot': '10:00 - 12:00 am',
              'tlColors': const Color.fromARGB(255, 212, 233, 155),
              'bgColors': const Color.fromARGB(255, 240, 213, 211),
            },
            {
              'time': '12:00 apm',
              'title': 'Breakfast',
              'slot': '12:00 - 1:00 pm',
              'tlColors': const Color.fromARGB(255, 130, 182, 228),
              'bgColors': const Color.fromARGB(255, 206, 224, 238)
            },
            {
              'time': '2:00 pm',
              'title': 'Lunch',
              'slot': '2:00 - 3:00 pm',
              'tlColors': const Color.fromARGB(255, 226, 147, 142),
              'bgColors': const Color.fromARGB(255, 226, 191, 189),
            },
            {
              'time': '3:00 pm',
              'title': 'Go For a Walk',
              'slot': '4:00 - 5:00 pm',
              'tlColors': const Color.fromARGB(255, 219, 142, 136),
              'bgColors': const Color.fromARGB(255, 243, 207, 205),
            }
          ]),
      TaskModel(
        icondata: Icons.person_2_rounded,
        title: 'Work',
        bgcolor: const Color.fromARGB(255, 187, 170, 197),
        iconcolor: Colors.black,
        btncolor: Colors.blue,
        left: 2,
        done: 1,
      ),
      TaskModel(
        icondata: Icons.person_2_rounded,
        title: 'Health',
        bgcolor: const Color.fromARGB(255, 200, 207, 218),
        iconcolor: Colors.black,
        btncolor: const Color.fromARGB(255, 43, 175, 61),
        left: 2,
        done: 1,
      ),
      TaskModel(islast: true),
    ];
  }
}
