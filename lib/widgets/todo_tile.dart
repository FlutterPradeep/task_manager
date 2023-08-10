import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Todotile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onchanged;
  Todotile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onchanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onchanged),
            Text(
              taskName,
            ),
          ],
        ),
      ),
    );
  }
}
