import 'package:flutter/material.dart';

class Tasktitle extends StatelessWidget {
  const Tasktitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Tasks',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(30)),
            child: const Row(
              children: [
                Text('TimeLine'),
                Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }
}
